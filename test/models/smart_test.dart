import 'dart:convert';

import 'package:fl_clash/common/task.dart';
import 'package:fl_clash/enum/enum.dart';
import 'package:fl_clash/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Smart ranks accept JSON integer and decimal weights', () {
    final zero = SmartWeight.fromJson({
      'name': 'Node A',
      'rank': 'RarelyUsed',
      'weight': 0,
    });
    final ranked = SmartWeight.fromJson({
      'name': 'Node B',
      'rank': 'MostUsed',
      'weight': 0.85,
    });

    expect(zero.weight, 0.0);
    expect(ranked.name, 'Node B');
    expect(ranked.rank, 'MostUsed');
    expect(ranked.weight, 0.85);
  });

  test('Smart groups use the core pick over a stale saved selection', () {
    expect(GroupType.parse('Smart'), GroupType.Smart);
    expect(GroupType.parse('smart'), GroupType.Smart);
    expect(GroupType.selectableValues, contains(GroupType.Smart));
    const auto = Group(
      type: GroupType.Smart,
      name: 'Smart',
      now: 'Smart - Select',
      fixed: false,
    );
    expect(auto.getCurrentSelectedName('Stale manual node'), 'Smart - Select');
    final pinned = auto.copyWith(now: 'Pinned node', fixed: true);
    expect(pinned.getCurrentSelectedName('Stale manual node'), 'Pinned node');
    final restored = Group.fromJson(
      jsonDecode(jsonEncode(auto)) as Map<String, dynamic>,
    );
    expect(restored.fixed, isFalse);
  });

  test('proxy snapshots retain Smart members and manual pin state', () async {
    final groups = await buildGroups(
      const ComputeGroupsState(
        proxiesData: ProxiesData(
          proxies: {
            'Smart': {
              'name': 'Smart',
              'type': 'Smart',
              'now': 'Node A',
              'fixed': true,
              'all': ['Node A'],
            },
            'Node A': {'name': 'Node A', 'type': 'Shadowsocks'},
          },
          all: ['Smart'],
        ),
        sortType: ProxiesSortType.none,
        delayMap: {},
        selectedMap: {},
        defaultTestUrl: 'https://example.com',
      ),
    );

    expect(groups.single.type, GroupType.Smart);
    expect(groups.single.fixed, isTrue);
    expect(groups.single.now, 'Node A');
    expect(groups.single.all.single.name, 'Node A');
  });

  test('custom Smart options survive storage and YAML editing', () {
    const original = ProxyGroup(
      profileId: 3,
      id: 9,
      name: 'Smart',
      type: GroupType.Smart,
      proxies: ['A', 'B'],
      tolerance: 50,
      useLightGbm: true,
      collectData: false,
      sampleRate: 0.25,
      preferAsn: true,
      policyPriority: 'A:2',
    );
    final restored = ProxyGroup.fromJson(
      jsonDecode(jsonEncode(original)) as Map<String, dynamic>,
    );
    final edited = restored.withDefinitionYaml(
      restored.definitionYaml.replaceFirst(
        'sample-rate: 0.25',
        'sample-rate: 0.5',
      ),
    );

    expect(edited.id, original.id);
    expect(edited.profileId, original.profileId);
    expect(edited.definition, {
      'name': 'Smart',
      'type': 'smart',
      'proxies': ['A', 'B'],
      'tolerance': 50,
      'uselightgbm': true,
      'collectdata': false,
      'sample-rate': 0.5,
      'prefer-asn': true,
      'policy-priority': 'A:2',
    });
    final manual = edited.copyWith(type: GroupType.Selector).definition;
    for (final key in [
      'tolerance',
      'uselightgbm',
      'collectdata',
      'sample-rate',
      'prefer-asn',
      'policy-priority',
    ]) {
      expect(manual, isNot(contains(key)));
    }
  });
}
