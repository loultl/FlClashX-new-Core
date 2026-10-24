import 'package:fl_clash/models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core.dart';

final smartWeightsProvider = FutureProvider.autoDispose
    .family<List<SmartWeight>, String>((ref, groupName) {
      ref.watch(coreStatusProvider);
      return ref.watch(coreHandlerProvider).getSmartWeights(groupName);
    });
