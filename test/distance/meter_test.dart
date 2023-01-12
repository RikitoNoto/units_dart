import 'package:flutter_test/flutter_test.dart';
import 'package:units_dart/distance/distance.dart';

void main() {
  initialValueTest();
  convertUnitTest();
}

void initialValueTest(){
  group('initialize value test', () {
    group('arg value test', () {
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
  });
}

void convertUnitTest(){
  group('convert unit test', () {
    group('to meter unit test', () {
      test('should be convert 0m to 0m.', () {
        Distance distance = Meter(0);
        expect(distance.meter.value, 0);
      });

      test('should be convert 10m to 10m.', () {
        Distance distance = Meter(10);
        expect(distance.meter.value, 10);
      });

      test('should be convert 6578974m to 6578974m.', () {
        Distance distance = Meter(6578974);
        expect(distance.meter.value, 6578974);
      });

      test('should be convert 467.4679671325587m to 467.4679671325587m.', () {
        Distance distance = Meter(467.4679671325587);
        expect(distance.meter.value, 467.4679671325587);
      });
    });

    group('to yard unit test', () {
      test('should be convert 0m to 0yd.', () {
        Distance distance = Meter(0);
        expect(distance.yard.value, 0);
      });

      test('should be convert 1m to 1.0936yd.', () {
        Distance distance = Meter(1);
        expect(distance.yard.value, 1.0936);
      });

      test('should be convert 10000m to 10936yd.', () {
        Distance distance = Meter(10000);
        expect(distance.yard.value, 10936);
      });

      test('should be convert 11.05m to 12.08428yd.', () {
        Distance distance = Meter(11.05);
        expect(distance.yard.value, 12.08428);
      });
    });
  });
}
