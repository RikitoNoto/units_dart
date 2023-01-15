import 'package:flutter_test/flutter_test.dart';
import 'package:units_dart/distance/distance.dart';

void main() {
  group('initialize value test', () {
    for (int i = 0; i < 100; i++) {
      test('should get the value of $i when create with int value of $i.', () {
        Distance distance = Meter(meter: i);
        expect(distance.value, i);
      });
    }
    for (double i = 0; i < 1; i+=0.01) {
      test('should get the value of $i when create with double value of $i.', () {
        Distance distance = Meter(meter: i);
        expect(distance.value, i);
      });
    }
  });

  group('construct some scales', () {
    test('should be construct with meter of 0.', () {
      Distance distance = Meter(meter: 0);
      expect(distance.value, 0);
    });

    test('should be construct with meter of 10000.', () {
      Distance distance = Meter(meter: 10000);
      expect(distance.value, 10000);
    });

    test('should be construct with meter of 0.0125.', () {
      Distance distance = Meter(meter: 0.0125);
      expect(distance.value, 0.0125);
    });

    test('should be construct with kilometer of 0.', () {
      Distance distance = Meter(kilometer: 0);
      expect(distance.value, 0);
    });

    test('should be construct with kilometer of 10000.', () {
      Distance distance = Meter(kilometer: 10000);
      expect(distance.value, 10000000);
    });

    test('should be construct with kilometer of 0.0125.', () {
      Distance distance = Meter(kilometer: 0.0125);
      expect(distance.value, 12.5);
    });

    test('should be construct with millimeter of 0.', () {
      Distance distance = Meter(millimeter: 0);
      expect(distance.value, 0);
    });

    test('should be construct with millimeter of 10000.', () {
      Distance distance = Meter(millimeter: 10000);
      expect(distance.value, 10);
    });

    test('should be construct with millimeter of 0.0125.', () {
      Distance distance = Meter(millimeter: 0.0125);
      expect(distance.value, 0.0000125);
    });

    test('should be construct with micrometer of 0.', () {
      Distance distance = Meter(micrometer: 0);
      expect(distance.value, 0);
    });

    test('should be construct with micrometer of 10000.', () {
      Distance distance = Meter(micrometer: 10000);
      expect(distance.value, 0.01);
    });

    test('should be construct with micrometer of 0.5.', () {
      Distance distance = Meter(micrometer: 0.5);
      expect(distance.value, 0.0000005);
    });
  });

  group('to string raw test', () {
    for (int i = 0; i < 100; i++) {
      test('should be out "${i}m" when call toStringRaw with int value of $i.', () {
        Distance distance = Meter(meter: i);
        expect(distance.toStringRaw, "${i}m");
      });
    }

    for (double i = 0; i < 1; i+=0.01) {
      test('should be out "${i}m" when call toStringRaw with double value of $i.', () {
        Distance distance = Meter(meter: i);
        expect(distance.toStringRaw, "${i}m");
      });
    }
  });

  group('get some scale test', () {
    test('should get the scale of meter 0', (){
      Meter meter = Meter(kilometer: 0, meter: 0, millimeter: 0, micrometer: 0);
      expect(meter.meter, 0);
    });

    test('should get the scale of meter 5', (){
      Meter meter = Meter(kilometer: 5, meter: 5, millimeter: 5, micrometer: 5);
      expect(meter.meter, 5005.005005);
    });

    test('should get the scale of meter 0.5', (){
      Meter meter = Meter(kilometer: 0.5, meter: 0.5, millimeter: 0.5, micrometer: 0.5);
      expect(meter.meter, 500.5005005);
    });

    test('should get the scale of kilometer 0', (){
      Meter meter = Meter(kilometer: 0, meter: 0, millimeter: 0, micrometer: 0);
      expect(meter.kilometer, 0);
    });

    test('should get the scale of kilometer 5', (){
      Meter meter = Meter(kilometer: 5, meter: 5, millimeter: 5, micrometer: 5);
      expect(meter.kilometer, 5.005005005);
    });

    test('should get the scale of kilometer 0.5', (){
      Meter meter = Meter(kilometer: 0.5, meter: 0.5, millimeter: 0.5, micrometer: 0.5);
      expect(meter.kilometer, 0.5005005005);
    });

    test('should get the scale of millimeter 0', (){
      Meter meter = Meter(kilometer: 0, meter: 0, millimeter: 0, micrometer: 0);
      expect(meter.millimeter, 0);
    });

    test('should get the scale of millimeter 5', (){
      Meter meter = Meter(kilometer: 5, meter: 5, millimeter: 5, micrometer: 5);
      expect(meter.millimeter, 5005005.005);
    });

    test('should get the scale of millimeter 0.5', (){
      Meter meter = Meter(kilometer: 0.5, meter: 0.5, millimeter: 0.5, micrometer: 0.5);
      expect(meter.millimeter, 500500.5005);
    });

    test('should get the scale of micrometer 0', (){
      Meter meter = Meter(kilometer: 0, meter: 0, millimeter: 0, micrometer: 0);
      expect(meter.micrometer, 0);
    });

    test('should get the scale of micrometer 5', (){
      Meter meter = Meter(kilometer: 5, meter: 5, millimeter: 5, micrometer: 5);
      expect(meter.micrometer, 5005005005);
    });

    test('should get the scale of micrometer 0.5', (){
      Meter meter = Meter(kilometer: 0.5, meter: 0.5, millimeter: 0.5, micrometer: 0.5);
      expect(meter.micrometer, 500500500.5);
    });
  });
}
