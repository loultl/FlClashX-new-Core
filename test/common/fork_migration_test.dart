import 'dart:convert';
import 'dart:io';

import 'package:fl_clash/common/common.dart';
import 'package:fl_clash/enum/enum.dart';
import 'package:fl_clash/models/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart';
import 'package:rust_api/rust_api.dart';

import '../helpers/app_paths.dart';
import '../plugins/code_forge/support.dart' show initEditorNative;

void main() {
  late Directory directory;

  setUpAll(initEditorNative);

  setUp(() async {
    directory = await Directory.systemTemp.createTemp('fork_migration');
    await useAppPaths(directory);
  });

  tearDown(() async {
    await directory.delete(recursive: true);
  });

  Map<String, Object?> legacyProfile({Map<String, Object?>? overrideData}) => {
    'id': 'old-profile',
    'label': 'Existing profile',
    'url': 'https://subscription.example/config',
    'autoUpdateDuration': const Duration(hours: 4).inMicroseconds,
    'selectedMap': {'Smart group': 'Preferred node'},
    'unfoldSet': ['Smart group'],
    if (overrideData != null) 'overrideData': overrideData,
  };

  Future<void> writeProfile() async {
    final file = File(join(directory.path, 'profiles', 'old-profile.yaml'));
    await file.parent.create(recursive: true);
    await file.writeAsString('rules: ["MATCH,DIRECT"]\n');
  }

  test(
    'backs up the original fork settings once before transforming them',
    () async {
      final original = <String, Object?>{
        'proxiesStyle': {'cardType': 'expand'},
        'profiles': [
          {
            ...legacyProfile(),
            'providerHeaders': {'flclashx-custom': 'update'},
          },
        ],
        'dav': {'password': 'kept-only-in-private-backup'},
        'unknownForkOption': {'keep': true},
      };
      await writeProfile();

      await oldToNowTask(original);

      final backup = File(join(directory.path, 'flclashx-legacy-config.json'));
      expect(json.decode(await backup.readAsString()), original);

      await oldToNowTask({'proxiesStyle': {}, 'unknownForkOption': false});

      expect(json.decode(await backup.readAsString()), original);
    },
  );

  test(
    'keeps the active global script ahead of the profile rule override',
    () async {
      await writeProfile();
      const scriptContent =
          'function main(config) { config.rules = ["MATCH,Global"]; return config; }';
      final migrated = await migrateLegacyConfig(
        configMap: {
          'currentProfileId': 'old-profile',
          'scriptProps': {
            'currentId': 'selected-script',
            'scripts': [
              {
                'id': 'selected-script',
                'label': 'Global script',
                'content': scriptContent,
              },
            ],
          },
          'profiles': [
            legacyProfile(
              overrideData: {
                'enable': true,
                'rule': {
                  'type': 'override',
                  'overrideRules': [
                    {'id': 'rule-one', 'value': 'MATCH,Local'},
                  ],
                },
              },
            ),
          ],
        },
        sourcePath: directory.path,
        targetPath: directory.path,
      );

      final profile = migrated.profiles.single;
      expect(profile.extendType, ExtendType.script);
      expect(profile.scriptId, migrated.scripts.single.id);
      expect(profile.selectedMap, {'Smart group': 'Preferred node'});
      expect(profile.unfoldSet, {'Smart group'});
      expect(migrated.configMap?['currentProfileId'], profile.id);
      expect(await migrated.scripts.single.content, scriptContent);
    },
  );

  for (final replace in [false, true]) {
    test(
      'keeps ${replace ? 'replacement' : 'additional'} fork rules after a subscription refresh',
      () async {
        await writeProfile();
        const rule = 'DOMAIN,quoted.example,MATCH';
        final migrated = await migrateLegacyConfig(
          configMap: {
            'profiles': [
              legacyProfile(
                overrideData: {
                  'enable': true,
                  'rule': {
                    'type': replace ? 'override' : 'added',
                    replace ? 'overrideRules' : 'addedRules': [
                      {'id': 'rule-one', 'value': rule},
                    ],
                  },
                },
              ),
            ],
          },
          sourcePath: directory.path,
          targetPath: directory.path,
        );
        final script = await migrated.scripts.single.content;
        expect(script, isNotNull);
        expect(migrated.profiles.single.scriptId, migrated.scripts.single.id);
        for (final sourceRules in [
          ['MATCH,Original'],
          ['DOMAIN,new.example,DIRECT', 'MATCH,Refreshed'],
        ]) {
          final result = json.decode(
            await evaluateScript(
              script: script!,
              config: json.encode({'rules': sourceRules, 'mode': 'rule'}),
            ),
          );
          expect(result['rules'], [rule, if (!replace) ...sourceRules]);
          expect(result['mode'], 'rule');
        }
      },
    );
  }

  test('does not enable a disabled fork override', () async {
    await writeProfile();
    final migrated = await migrateLegacyConfig(
      configMap: {
        'profiles': [
          legacyProfile(
            overrideData: {
              'enable': false,
              'rule': {
                'type': 'override',
                'overrideRules': [
                  {'id': 'rule-one', 'value': 'MATCH,Inactive'},
                ],
              },
            },
          ),
        ],
      },
      sourcePath: directory.path,
      targetPath: directory.path,
    );

    expect(migrated.profiles.single.extendType, ExtendType.standard);
    expect(migrated.profiles.single.scriptId, isNull);
    expect(migrated.scripts, isEmpty);
  });
}
