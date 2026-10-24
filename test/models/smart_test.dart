import 'package:fl_clash/models/smart.dart';
import 'package:test/test.dart';

void main() {
  test('parses Smart rank fields returned by Prizrak-Core', () {
    final weight = SmartWeight.fromJson({
      'Name': 'node-a',
      'Rank': '1',
      'Weight': 0.75,
    });

    expect(weight.name, 'node-a');
    expect(weight.rank, '1');
    expect(weight.weight, 0.75);
  });
}
