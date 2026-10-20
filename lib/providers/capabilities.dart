import 'package:fl_clash/enum/enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'config.dart';
import 'core.dart';

final coreCapabilitiesProvider = FutureProvider<Set<String>>((ref) {
  final status = ref.watch(coreStatusProvider);
  if (status != CoreStatus.connected) {
    return const <String>{};
  }
  return ref.watch(coreHandlerProvider).getCapabilities();
});

final proxyTrafficStatisticsProvider = Provider<bool>((ref) {
  final supported = ref.watch(coreCapabilitiesProvider).asData?.value;
  return supported?.contains('onlyProxyTraffic') == true &&
      ref.watch(
        appSettingProvider.select((state) => state.onlyStatisticsProxy),
      );
});
