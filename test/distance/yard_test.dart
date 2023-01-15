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
          Distance distance = Yard(i);
          expect(distance.value, i);
        });
      }
      for (double i = 0; i < 1; i+=0.01) {
        test('should get the value of $i when create with double value of $i.', () {
          Distance distance = Yard(i);
          expect(distance.value, i);
        });
      }
    });

    group('to string raw test', () {
      for (int i = 0; i < 100; i++) {
        test('should be out "${i}yd" when call toStringRaw with int value of $i.', () {
          Distance distance = Yard(i);
          expect(distance.toStringRaw, "${i}yd");
        });
      }

      for (double i = 0; i < 1; i+=0.01) {
        test('should be out "${i}yd" when call toStringRaw with double value of $i.', () {
          Distance distance = Yard(i);
          expect(distance.toStringRaw, "${i}yd");
        });
      }
    });
  });
}

void convertUnitTest(){
  group('convert unit test', () {
    group('to yard unit test', () {
      test('should be convert 0yd to 0yd.', () {
        Distance distance = Yard(0);
        expect(distance.yard.value, 0);
      });

      test('should be convert 10yd to 10yd.', () {
        Distance distance = Yard(10);
        expect(distance.yard.value, 10);
      });

      test('should be convert 6578974yd to 6578974yd.', () {
        Distance distance = Yard(6578974);
        expect(distance.yard.value, 6578974);
      });

      test('should be convert 467.4679671325587yd to 467.4679671325587yd.', () {
        Distance distance = Yard(467.4679671325587);
        expect(distance.yard.value, 467.4679671325587);
      });

      group('to meter unit test', () {
        test('should be convert 0yd to 0m.', () {
          Distance distance = Yard(0);
          expect(distance.meter.value, 0);
        });

        test('should be convert 1.0936yd to 1m.', () {
          Distance distance = Yard(1.0936);
          expect(distance.meter.value, 1.0);
        });

        test('should be convert 10936yd to 10000m.', () {
          Distance distance = Yard(10936);
          expect(distance.meter.value, 10000);
        });

        test('should be convert 12.08428yd to 11.05m.', () {
          Distance distance = Yard(12.08428);
          expect(distance.meter.value, 11.05);
        });
      });
    });
  });
}
