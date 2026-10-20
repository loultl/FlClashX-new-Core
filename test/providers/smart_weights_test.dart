import 'package:fl_clash/core/controller.dart';
import 'package:fl_clash/core/interface.dart';
import 'package:fl_clash/enum/enum.dart';
import 'package:fl_clash/models/models.dart';
import 'package:fl_clash/providers/providers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';

class _MockCore extends Mock implements CoreHandlerInterface {}

void main() {
  test('Smart rankings refresh when the core reconnects', () async {
    final core = _MockCore();
    var weights = [
      const SmartWeight(name: 'Alpha', rank: 'MostUsed', weight: 0.9),
    ];
    when(() => core.getSmartWeights('Smart')).thenAnswer((_) async => weights);
    final container = ProviderContainer(
      overrides: [
        coreHandlerProvider.overrideWithValue(CoreController.scoped(core)),
        coreStatusProvider.overrideWithBuild((_, _) => CoreStatus.connected),
      ],
    );
    addTearDown(container.dispose);
    container.listen(coreStatusProvider, (_, _) {});
    container.listen(smartWeightsProvider('Smart'), (_, _) {});

    expect(
      (await container.read(smartWeightsProvider('Smart').future)).single.name,
      'Alpha',
    );

    container.read(coreStatusProvider.notifier).value = CoreStatus.connecting;
    await container.read(smartWeightsProvider('Smart').future);
    weights = [const SmartWeight(name: 'Beta', rank: 'MostUsed', weight: 0.8)];
    container.read(coreStatusProvider.notifier).value = CoreStatus.connected;

    expect(
      (await container.read(smartWeightsProvider('Smart').future)).single.name,
      'Beta',
    );
    verify(() => core.getSmartWeights('Smart')).called(3);
  });
}
