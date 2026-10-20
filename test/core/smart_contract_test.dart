import 'dart:convert';

import 'package:fl_clash/core/desktop/model.dart';
import 'package:fl_clash/core/interface.dart';
import 'package:fl_clash/core/method.dart';
import 'package:flutter_test/flutter_test.dart';

class _SmartCore extends CoreHandlerInterface {
  _SmartCore(this.response);

  final String? response;
  CoreMethodCall? call;

  @override
  Future<T?> invokeMethod<T>({
    required CoreMethod method,
    Object? arguments,
    Duration? timeout,
  }) async {
    call = CoreMethodCall.fromJson(
      jsonDecode(
            jsonEncode(CoreMethodCall(method: method, arguments: arguments)),
          )
          as Map<String, dynamic>,
    );
    final data = response;
    if (data == null) {
      return null;
    }
    return CoreMethodResponse.fromJson(
      jsonDecode(data) as Map<String, dynamic>,
    ).unwrap<T>();
  }

  @override
  Future<CoreLifecycleResult> start() async => const CoreLifecycleResult(
    revision: 0,
    outcome: CoreLifecycleOutcome.applied,
  );

  @override
  Future<CoreLifecycleResult> stop() => start();

  @override
  Future<CoreLifecycleResult> restart() => start();

  @override
  Future<CoreLifecycleResult> close() => start();
}

void main() {
  test(
    'core capabilities cross the shared envelope as a string list',
    () async {
      final core = _SmartCore(
        '{"result":["smartWeights","requestSnapshots","smartWeights"]}',
      );

      expect(await core.getCapabilities(), {
        'smartWeights',
        'requestSnapshots',
      });
      expect(core.call?.method, CoreMethod.getCapabilities);
      expect(core.call?.arguments, isNull);
    },
  );

  test('Smart weights use a group name and structured response list', () async {
    final core = _SmartCore(
      '{"result":[{"name":"A","rank":"MostUsed","weight":0.75}]}',
    );

    final weights = await core.getSmartWeights('Smart / route');

    expect(core.call?.method, CoreMethod.getSmartWeights);
    expect(core.call?.arguments, 'Smart / route');
    expect(weights.single.name, 'A');
    expect(weights.single.rank, 'MostUsed');
    expect(weights.single.weight, 0.75);
  });

  test('a new Smart group has an empty result rather than an error', () async {
    final core = _SmartCore('{"result":[]}');
    expect(await core.getSmartWeights('Smart'), isEmpty);
  });

  test('silence does not pretend Smart statistics are empty', () async {
    final core = _SmartCore(null);
    await expectLater(
      core.getSmartWeights('Smart'),
      throwsA(
        isA<CoreMethodException>().having(
          (error) => error.code,
          'code',
          'no_response',
        ),
      ),
    );
  });

  test('Smart method errors keep the shared core error contract', () async {
    final core = _SmartCore(
      '{"result":null,"error":{"code":"not_smart_group",'
      '"message":"Group is not Smart","details":"Manual"}}',
    );
    await expectLater(
      core.getSmartWeights('Manual'),
      throwsA(
        isA<CoreMethodException>()
            .having((error) => error.code, 'code', 'not_smart_group')
            .having((error) => error.details, 'details', 'Manual'),
      ),
    );
  });
}
