import 'package:flutter_test/flutter_test.dart';
import 'package:weather_demo/utils/result.dart';

void main() {
  group('Result tests', () {
    test('Should get Result.Ok', () async {
      final result = Result<String>.ok('Average temperature is 30');
      expect(result.toString(), 'Result<String>.ok(Average temperature is 30)');
    });

    test('Should get Result.error', () async {
      final result =
          Result<String>.error(Exception('Cannot get average temperature'));
      expect(result.toString(),
          'Result<String>.error(Exception: Cannot get average temperature)');
    });
  });
}
