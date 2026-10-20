import 'dart:async';

import 'package:fl_clash/enum/enum.dart';
import 'package:fl_clash/models/models.dart';
import 'package:fl_clash/providers/providers.dart';
import 'package:fl_clash/state.dart';
import 'package:fl_clash/ui/ui.dart';
import 'package:fl_clash/views/proxies/card.dart';
import 'package:fl_clash/views/proxies/smart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../helpers/test_app.dart';
import '../helpers/test_profiles.dart';

const _name = 'Smart group';
const _weights = [
  SmartWeight(name: 'Alpha', rank: 'MostUsed', weight: 2.75),
  SmartWeight(name: 'Beta', rank: 'RarelyUsed', weight: 0.12),
];

class _RecordingAction extends ProxiesAction {
  static final List<(String, String)> picks = [];

  @override
  void changeProxyDebounce(String groupName, String proxyName) {
    picks.add((groupName, proxyName));
  }
}

Group _group({bool fixed = false, String now = 'Smart - Select'}) => Group(
  name: _name,
  type: GroupType.Smart,
  fixed: fixed,
  now: now,
  all: const [
    Proxy(name: 'Alpha', type: 'ss'),
    Proxy(name: 'Beta', type: 'ss'),
  ],
);

void main() {
  late ProviderContainer container;

  Future<void> pumpView(
    WidgetTester tester, {
    Future<List<SmartWeight>> Function()? load,
    bool running = true,
    Group? group,
    Map<String, String> selectedMap = const {},
    Widget? child,
    bool settle = true,
    Size size = const Size(430, 850),
    Brightness brightness = Brightness.light,
  }) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    _RecordingAction.picks.clear();
    final profile = Profile.normal().copyWith(selectedMap: selectedMap);
    container = ProviderContainer(
      overrides: [
        currentProfileIdProvider.overrideWithBuild((_, _) => profile.id),
        profilesProvider.overrideWith(() => TestProfiles([profile])),
        isStartProvider.overrideWithValue(running),
        smartWeightsProvider(_name).overrideWith((_) async {
          return load == null ? _weights : await load();
        }),
        proxiesActionProvider.overrideWith(_RecordingAction.new),
      ],
    );
    globalState.container = container;
    addTearDown(container.dispose);
    container.read(groupsProvider.notifier).value = [group ?? _group()];
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: TestApp(
          theme: ThemeData(
            colorScheme: seededColorScheme(
              seedColor: const Color(0xff3478f6),
              brightness: brightness,
            ),
          ).withAppShapes.withAppSurfaces.withAppTypography,
          child: child ?? const SmartDetailsView(groupName: _name),
        ),
      ),
    );
    if (settle) {
      await tester.pumpAndSettle();
    } else {
      await tester.pump();
    }
  }

  testWidgets('shows raw scores, localized usage, and automatic routing', (
    tester,
  ) async {
    await pumpView(tester);

    expect(find.text('Score: 2.75'), findsOneWidget);
    expect(find.text('Usage: Frequently used'), findsOneWidget);
    expect(
      find.text('Chosen automatically for each destination'),
      findsOneWidget,
    );
    expect(find.text('Automatic'), findsOneWidget);
    expect(find.textContaining('%'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'pins a node and restores automatic selection in the same group',
    (tester) async {
      await pumpView(tester);
      await tester.tap(find.byTooltip('Pin node').last);
      expect(_RecordingAction.picks, [(_name, 'Beta')]);

      container.read(groupsProvider.notifier).value = [
        _group(fixed: true, now: 'Beta'),
      ];
      await tester.pumpAndSettle();
      expect(find.text('Pinned'), findsOneWidget);
      await tester.tap(find.text('Use automatic selection'));
      expect(_RecordingAction.picks, [(_name, 'Beta'), (_name, '')]);
    },
  );

  testWidgets('a stopped service does not request rankings', (tester) async {
    var calls = 0;
    await pumpView(
      tester,
      running: false,
      load: () async {
        calls++;
        return _weights;
      },
    );

    expect(
      find.text('Start the service to view Smart rankings.'),
      findsOneWidget,
    );
    expect(calls, 0);
    expect(find.byTooltip('Pin node'), findsNothing);
  });

  testWidgets(
    'a delayed first load completes without retaining the loading view',
    (tester) async {
      final pending = Completer<List<SmartWeight>>();
      await pumpView(tester, load: () => pending.future, settle: false);
      await tester.pump(const Duration(milliseconds: 600));
      expect(find.text('Loading…'), findsOneWidget);

      pending.complete(_weights);
      await tester.pumpAndSettle();
      expect(find.text('Score: 2.75'), findsOneWidget);
      expect(find.text('Loading…'), findsNothing);
    },
  );

  testWidgets('periodic refresh waits for a pending ranking response', (
    tester,
  ) async {
    final pending = Completer<List<SmartWeight>>();
    var calls = 0;
    await pumpView(
      tester,
      load: () {
        calls++;
        return pending.future;
      },
      settle: false,
    );

    await tester.pump(const Duration(seconds: 11));
    expect(calls, 1);
    pending.complete(_weights);
    await tester.pumpAndSettle();
    expect(find.text('Score: 2.75'), findsOneWidget);
  });

  testWidgets('Smart node selection follows the core pin over a saved pick', (
    tester,
  ) async {
    await pumpView(
      tester,
      selectedMap: const {_name: 'Alpha'},
      child: const SizedBox(
        width: 320,
        height: 150,
        child: ProxyCard(
          groupName: _name,
          groupType: GroupType.Smart,
          proxy: Proxy(name: 'Alpha', type: 'ss'),
          testUrl: null,
          type: ProxyCardType.compact,
        ),
      ),
    );

    expect(find.byType(SelectionBadge), findsNothing);
    await tester.tap(find.text('Alpha'));
    expect(_RecordingAction.picks, [(_name, 'Alpha')]);

    container.read(groupsProvider.notifier).value = [
      _group(fixed: true, now: 'Alpha'),
    ];
    await tester.pumpAndSettle();
    expect(find.byType(SelectionBadge), findsOneWidget);
    await tester.tap(find.text('Alpha'));
    expect(_RecordingAction.picks, [(_name, 'Alpha'), (_name, '')]);
  });

  testWidgets('an empty ranking explains when observations become available', (
    tester,
  ) async {
    await pumpView(tester, load: () async => []);
    expect(find.text('No Smart rankings yet'), findsOneWidget);
    expect(
      find.text('Rankings appear after Smart observes traffic.'),
      findsOneWidget,
    );
    expect(find.text('Automatic'), findsOneWidget);
  });

  testWidgets('a failed load can be retried', (tester) async {
    var calls = 0;
    await pumpView(
      tester,
      load: () async {
        if (++calls == 1) throw StateError('unavailable');
        return _weights;
      },
    );
    expect(find.text('Could not load Smart rankings.'), findsOneWidget);

    await tester.tap(find.text('Retry'));
    await tester.pumpAndSettle();
    expect(calls, 2);
    expect(find.text('Score: 2.75'), findsOneWidget);
    expect(find.text('Could not load Smart rankings.'), findsNothing);
  });

  testWidgets(
    'search keeps original rank positions and leaves auto controls visible',
    (tester) async {
      await pumpView(tester, group: _group(fixed: true, now: 'Beta'));
      await tester.tap(find.byTooltip('Search'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'Beta');
      await tester.pumpAndSettle();

      expect(find.text('Score: 2.75'), findsNothing);
      expect(find.text('Score: 0.12'), findsOneWidget);
      expect(find.text('2'), findsOneWidget);
      expect(find.text('Use automatic selection'), findsOneWidget);

      await tester.enterText(find.byType(TextField), 'missing');
      await tester.pumpAndSettle();
      expect(find.text('No matching nodes'), findsOneWidget);
      expect(find.text('Use automatic selection'), findsOneWidget);
    },
  );

  for (final type in ProxyCardType.values) {
    testWidgets('only a Smart card itself gets details in ${type.name} mode', (
      tester,
    ) async {
      await pumpView(
        tester,
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 150,
                child: ProxyCard(
                  groupName: 'Parent',
                  groupType: GroupType.Selector,
                  proxy: const Proxy(name: _name, type: 'Smart'),
                  testUrl: null,
                  type: type,
                ),
              ),
              SizedBox(
                height: 150,
                child: ProxyCard(
                  groupName: _name,
                  groupType: GroupType.Smart,
                  proxy: const Proxy(name: 'Alpha', type: 'ss'),
                  testUrl: null,
                  type: type,
                ),
              ),
            ],
          ),
        ),
      );

      expect(find.byType(SmartDetailsButton), findsOneWidget);
      expect(
        tester
            .widget<SmartDetailsButton>(find.byType(SmartDetailsButton))
            .groupName,
        _name,
      );
      expect(tester.takeException(), isNull);
    });
  }

  for (final brightness in Brightness.values) {
    for (final width in [320.0, 1100.0]) {
      testWidgets('fits $width dp in ${brightness.name} mode', (tester) async {
        await pumpView(
          tester,
          size: Size(width, 740),
          brightness: brightness,
          group: _group(fixed: true, now: 'Beta'),
        );
        expect(find.text('Score: 2.75'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }
  }
}
