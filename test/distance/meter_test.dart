import 'package:flutter_test/flutter_test.dart';
import 'package:units_dart/distance/distance.dart';

void main() {
  group('initialize value test', () {
    for (int i = 0; i < 100; i++) {
      test('should get the value of $i when create with int value of $i.', () {
        Distance distance = Meter(i);
        expect(distance.value, i);
      });
    }
    for (double i = 0; i < 1; i+=0.01) {
      test('should get the value of $i when create with double value of $i.', () {
        Distance distance = Meter(i);
        expect(distance.value, i);
      });
    }
  });

  group('to string raw test', () {
    for (int i = 0; i < 100; i++) {
      test('should be out "${i}m" when call toStringRaw with int value of $i.', () {
        Distance distance = Meter(i);
        expect(distance.toStringRaw, "${i}m");
      });
    }

    for (double i = 0; i < 1; i+=0.01) {
      test('should be out "${i}m" when call toStringRaw with double value of $i.', () {
        Distance distance = Meter(i);
        expect(distance.toStringRaw, "${i}m");
      });
    }
  });
}
