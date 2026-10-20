import 'package:fl_clash/core/controller.dart';
import 'package:fl_clash/core/interface.dart';
import 'package:fl_clash/enum/enum.dart';
import 'package:fl_clash/models/models.dart';
import 'package:fl_clash/providers/app.dart';
import 'package:fl_clash/providers/capabilities.dart';
import 'package:fl_clash/providers/config.dart';
import 'package:fl_clash/providers/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';

class _MockCore extends Mock implements CoreHandlerInterface {}

void main() {
  for (final supported in [false, true]) {
    test('proxy-only traffic requires engine support: $supported', () async {
      final container = ProviderContainer(
        overrides: [
          coreCapabilitiesProvider.overrideWith(
            (_) async => supported ? {'onlyProxyTraffic'} : <String>{},
          ),
          appSettingProvider.overrideWithBuild(
            (_, _) => const AppSettingProps(onlyStatisticsProxy: true),
          ),
        ],
      );
      addTearDown(container.dispose);
      container.listen(appSettingProvider, (_, _) {});
      await container.read(coreCapabilitiesProvider.future);
      expect(container.read(proxyTrafficStatisticsProvider), supported);
      expect(container.read(appSettingProvider).onlyStatisticsProxy, isTrue);

      container
          .read(appSettingProvider.notifier)
          .update((state) => state.copyWith(onlyStatisticsProxy: false));
      expect(container.read(proxyTrafficStatisticsProvider), isFalse);
    });
  }

  test(
    'capabilities are cleared on disconnect and fetched after reconnect',
    () async {
      final core = _MockCore();
      var offered = {'smartWeights', 'requestSnapshots'};
      when(() => core.getCapabilities()).thenAnswer((_) async => offered);
      final container = ProviderContainer(
        overrides: [
          coreHandlerProvider.overrideWithValue(CoreController.scoped(core)),
          coreStatusProvider.overrideWithBuild(
            (_, _) => CoreStatus.disconnected,
          ),
        ],
      );
      addTearDown(container.dispose);
      container.listen(coreStatusProvider, (_, _) {});
      container.listen(coreCapabilitiesProvider, (_, _) {});

      expect(await container.read(coreCapabilitiesProvider.future), isEmpty);
      verifyNever(() => core.getCapabilities());

      container.read(coreStatusProvider.notifier).value = CoreStatus.connected;
      expect(await container.read(coreCapabilitiesProvider.future), offered);

      container.read(coreStatusProvider.notifier).value =
          CoreStatus.disconnected;
      expect(await container.read(coreCapabilitiesProvider.future), isEmpty);

      offered = {'requestSnapshots'};
      container.read(coreStatusProvider.notifier).value = CoreStatus.connected;
      expect(await container.read(coreCapabilitiesProvider.future), offered);
      verify(() => core.getCapabilities()).called(2);
    },
  );
}
