import 'package:flutter_test/flutter_test.dart';
import 'package:units_dart/distance/distance.dart';

void main() {
  initialValueTest();
  convertUnitTest();
  scalingValueTest();
}

void initialValueTest(){
  group('initialize value test', () {
    test('should be construct with yard of 0.', () {
      Distance distance = Yard(yard: 0);
      expect(distance.value, 0);
    });

    test('should be construct with yard of 10000.', () {
      Distance distance = Yard(yard: 10000);
      expect(distance.value, 10000);
    });

    test('should be construct with yard of 0.0125.', () {
      Distance distance = Yard(yard: 0.0125);
      expect(distance.value, 0.0125);
    });

    test('should be construct with inch of 0.', () {
      Distance distance = Yard(inch: 0);
      expect(distance.value, 0);
    });

    test('should be construct with inch of 360000.', () {
      Distance distance = Yard(inch: 360000);
      expect(distance.value, 10000);
    });

    test('should be construct with inch of 0.036.', () {
      Distance distance = Yard(inch: 0.036);
      expect(distance.value, 0.001);
    });

    test('should be construct with feet of 0.', () {
      Distance distance = Yard(feet: 0);
      expect(distance.value, 0);
    });

    test('should be construct with feet of 360000.', () {
      Distance distance = Yard(feet: 360000);
      expect(distance.value, 120000);
    });

    test('should be construct with feet of 0.03.', () {
      Distance distance = Yard(feet: 0.03);
      expect(distance.value, 0.01);
    });

    test('should be construct with rod of 0.', () {
      Distance distance = Yard(rod: 0);
      expect(distance.value, 0);
    });

    test('should be construct with rod of 1.', () {
      Distance distance = Yard(rod: 1);
      expect(distance.value, 5.5);
    });

    test('should be construct with rod of 0.01.', () {
      Distance distance = Yard(rod: 0.01);
      expect(distance.value, 0.055);
    });

    test('should be construct with pole of 0.', () {
      Distance distance = Yard(pole: 0);
      expect(distance.value, 0);
    });

    test('should be construct with pole of 1.', () {
      Distance distance = Yard(pole: 1);
      expect(distance.value, 5.5);
    });

    test('should be construct with pole of 0.01.', () {
      Distance distance = Yard(pole: 0.01);
      expect(distance.value, 0.055);
    });

    test('should be construct with perch of 0.', () {
      Distance distance = Yard(perch: 0);
      expect(distance.value, 0);
    });

    test('should be construct with perch of 1.', () {
      Distance distance = Yard(perch: 1);
      expect(distance.value, 5.5);
    });

    test('should be construct with perch of 0.01.', () {
      Distance distance = Yard(perch: 0.01);
      expect(distance.value, 0.055);
    });

    test('should be construct with chain of 0.', () {
      Distance distance = Yard(chain: 0);
      expect(distance.value, 0);
    });

    test('should be construct with chain of 1.', () {
      Distance distance = Yard(chain: 1);
      expect(distance.value, 22);
    });

    test('should be construct with chain of 0.01.', () {
      Distance distance = Yard(chain: 0.01);
      expect(distance.value, 0.22);
    });

    test('should be construct with furlong of 0.', () {
      Distance distance = Yard(furlong: 0);
      expect(distance.value, 0);
    });

    test('should be construct with furlong of 1.', () {
      Distance distance = Yard(furlong: 1);
      expect(distance.value, 220);
    });

    test('should be construct with furlong of 0.01.', () {
      Distance distance = Yard(furlong: 0.01);
      expect(distance.value, 2.2);
    });

    test('should be construct with mile of 0.', () {
      Distance distance = Yard(mile: 0);
      expect(distance.value, 0);
    });

    test('should be construct with mile of 1.', () {
      Distance distance = Yard(mile: 1);
      expect(distance.value, 1760);
    });

    test('should be construct with mile of 0.01.', () {
      Distance distance = Yard(mile: 0.01);
      expect(distance.value, 17.6);
    });

    group('arg value test', () {
      for (int i = 0; i < 100; i++) {
        test('should get the value of $i when create with int value of $i.', () {
          Distance distance = Yard(yard: i);
          expect(distance.value, i);
        });
      }
      for (double i = 0; i < 1; i+=0.01) {
        test('should get the value of $i when create with double value of $i.', () {
          Distance distance = Yard(yard: i);
          expect(distance.value, i);
        });
      }
    });

    group('to string raw test', () {
      for (int i = 0; i < 100; i++) {
        test('should be out "${i}yd" when call toStringRaw with int value of $i.', () {
          Distance distance = Yard(yard: i);
          expect(distance.toStringRaw, "${i}yd");
        });
      }

      for (double i = 0; i < 1; i+=0.01) {
        test('should be out "${i}yd" when call toStringRaw with double value of $i.', () {
          Distance distance = Yard(yard: i);
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
        Distance distance = Yard(yard: 0);
        expect(distance.yard.value, 0);
      });

      test('should be convert 10yd to 10yd.', () {
        Distance distance = Yard(yard: 10);
        expect(distance.yard.value, 10);
      });

      test('should be convert 6578974yd to 6578974yd.', () {
        Distance distance = Yard(yard: 6578974);
        expect(distance.yard.value, 6578974);
      });

      test('should be convert 467.4679671325587yd to 467.4679671325587yd.', () {
        Distance distance = Yard(yard: 467.4679671325587);
        expect(distance.yard.value, 467.4679671325587);
      });

      group('to meter unit test', () {
        test('should be convert 0yd to 0m.', () {
          Distance distance = Yard(yard: 0);
          expect(distance.meter.value, 0);
        });

        test('should be convert 1.0936yd to 1m.', () {
          Distance distance = Yard(yard: 1.0936);
          expect(distance.meter.value, 1.0);
        });

        test('should be convert 10936yd to 10000m.', () {
          Distance distance = Yard(yard: 10936);
          expect(distance.meter.value, 10000);
        });

        test('should be convert 12.08428yd to 11.05m.', () {
          Distance distance = Yard(yard: 12.08428);
          expect(distance.meter.value, 11.05);
        });
      });
    });
  });
}


void scalingValueTest() {
  group('get some scale test', () {
    test('should get the scale of yard 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.value, 0);
    });
    
    test('should get the scale of yard 3', (){
      Yard yard = Yard(inch: 3, feet: 3, yard: 3, rod: 3, pole: 3, perch: 3, chain: 3, furlong: 3, mile: 3,);
      expect(yard.value, 6059.5 + 1/12);
    });

    test('should get the scale of yard 0.3', (){
      Yard yard = Yard(inch: 0.3, feet: 0.3, yard: 0.3, rod: 0.3, pole: 0.3, perch: 0.3, chain: 0.3, furlong: 0.3, mile: 0.3,);
      expect(yard.value, 605.95 + 1/120);
    });

    test('should get the scale of feet 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.feet, 0);
    });

    test('should get the scale of feet 3', (){
      Yard yard = Yard(inch: 3, feet: 3, yard: 3, rod: 3, pole: 3, perch: 3, chain: 3, furlong: 3, mile: 3,);
      expect(yard.feet, 18178.5 + 1/4);
    });

    test('should get the scale of feet 0.3', (){
      Yard yard = Yard(inch: 0.3, feet: 0.3, yard: 0.3, rod: 0.3, pole: 0.3, perch: 0.3, chain: 0.3, furlong: 0.3, mile: 0.3,);
      expect(yard.feet, 1817.85 + 1/40);
    });

    test('should get the scale of inch 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.inch, 0);
    });

    test('should get the scale of inch 3', (){
      Yard yard = Yard(inch: 3, feet: 3, yard: 3, rod: 3, pole: 3, perch: 3, chain: 3, furlong: 3, mile: 3,);
      expect(yard.inch, 218145);
    });

    test('should get the scale of inch 0.3', (){
      Yard yard = Yard(inch: 0.3, feet: 0.3, yard: 0.3, rod: 0.3, pole: 0.3, perch: 0.3, chain: 0.3, furlong: 0.3, mile: 0.3,);
      expect(yard.inch, 21814.5);
    });

    test('should get the scale of rod 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.rod, 0);
    });

    test('should get the scale of rod 16.5', (){
      Yard yard = Yard(inch: 16.5, feet: 16.5, yard: 16.5, rod: 16.5, pole: 16.5, perch: 16.5, chain: 16.5, furlong: 16.5, mile: 16.5,);
      expect(yard.rod, 6059.5 + 16.5/198);
    });

    test('should get the scale of rod 0.165', (){
      Yard yard = Yard(inch: 0.165, feet: 0.165, yard: 0.165, rod: 0.165, pole: 0.165, perch: 0.165, chain: 0.165, furlong: 0.165, mile: 0.165,);
      expect(yard.rod, 60.595 + 16.5/19800);
    });

    test('should get the scale of pole 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.pole, 0);
    });

    test('should get the scale of pole 16.5', (){
      Yard yard = Yard(inch: 16.5, feet: 16.5, yard: 16.5, rod: 16.5, pole: 16.5, perch: 16.5, chain: 16.5, furlong: 16.5, mile: 16.5,);
      expect(yard.pole, 6059.5 + 16.5/198);
    });

    test('should get the scale of pole 0.165', (){
      Yard yard = Yard(inch: 0.165, feet: 0.165, yard: 0.165, rod: 0.165, pole: 0.165, perch: 0.165, chain: 0.165, furlong: 0.165, mile: 0.165,);
      expect(yard.pole, 60.595 + 16.5/19800);
    });

    test('should get the scale of perch 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.perch, 0);
    });

    test('should get the scale of perch 16.5', (){
      Yard yard = Yard(inch: 16.5, feet: 16.5, yard: 16.5, rod: 16.5, pole: 16.5, perch: 16.5, chain: 16.5, furlong: 16.5, mile: 16.5,);
      expect(yard.perch, 6059.5 + 16.5/198);
    });

    test('should get the scale of perch 0.165', (){
      Yard yard = Yard(inch: 0.165, feet: 0.165, yard: 0.165, rod: 0.165, pole: 0.165, perch: 0.165, chain: 0.165, furlong: 0.165, mile: 0.165,);
      expect(yard.perch, 60.595 + 16.5/19800);
    });

    test('should get the scale of chain 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.chain, 0);
    });

    test('should get the scale of chain 22', (){
      Yard yard = Yard(inch: 22, feet: 22, yard: 22, rod: 22, pole: 22, perch: 22, chain: 22, furlong: 22, mile: 22,);
      expect(yard.chain, 2019.5 + 22/66 + 22/792);
    });

    test('should get the scale of chain 0.22', (){
      Yard yard = Yard(inch: 0.22, feet: 0.22, yard: 0.22, rod: 0.22, pole: 0.22, perch: 0.22, chain: 0.22, furlong: 0.22, mile: 0.22,);
      expect(yard.chain, 20.195 + 22/6600 + 22/79200);
    });

    test('should get the scale of furlong 0', (){
      Yard yard = Yard(inch: 0, feet: 0, yard: 0, rod: 0, pole: 0, perch: 0, chain: 0, furlong: 0, mile: 0,);
      expect(yard.furlong, 0);
    });

    test('should get the scale of furlong 10', (){
      Yard yard = Yard(inch: 10, feet: 10, yard: 10, rod: 10, pole: 10, perch: 10, chain: 10, furlong: 10, mile: 10,);
      expect(yard.furlong, 91.75 + 10/220 + 10/660 + 10/7920);
    });

    test('should get the scale of furlong 0.1', (){
      Yard yard = Yard(inch: 0.1, feet: 0.1, yard: 0.1, rod: 0.1, pole: 0.1, perch: 0.1, chain: 0.1, furlong: 0.1, mile: 0.1,);
      expect(yard.furlong, 0.9175 + 10/22000 + 10/66000 + 10/792000);
    });
  });
}
