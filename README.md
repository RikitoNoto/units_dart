# Units Dart
Units Dart is a convertor of units.
It allows you to convert easy meters to feet and kilograms to pond.

## Usage

### Convert unit scale
#### Distance
**Meter**
The Meter class provides the following scale methods.
- kilometer
- meter
- centimeter
- millimeter

**Example: scaling meter unit**
```dart
  var meter = Meter(1);
  print(meter.meter);       // 1
  print(meter.kilometer);   // 0.001
  print(meter.centimeter);  // 100
  print(meter.millimeter);  // 1000
```

**Yard**
The Yard class provides the following scale methods.
- mile
- furlong
- chain
- rod
- pole
- perche
- yard
- feet
- inch

**Example: scaling yard unit**
```dart
  var yard = Yard(1);
  print(yard.yard);   // 1
  print(yard.feet);   // 3
  print(yard.inch);   // 36

  // it be able to create from other scale.
  var yard = Yard.fromMile(1);
  print(yard.yard);       // 1760
  print(yard.furlong);    // 8
  print(yard.chain);      // 80
  print(yard.rod);        // 320
  print(yard.pole);       // 320
  print(yard.perche);     // 320
```


### Convert units
#### Distance
The Distance interface is inherited by the following classes.
- Meter
- Yard
- Mickey

The Distance interface provides the following conversion methods.
- meter
- yard
- mickey

**Example: convert meter to yard**
```dart
  var meter = Meter(1);
  print(meter); // 1m
  var yard = meter.yard;
  print(yard);  // 1.0936yd
```

**Example: convert meter to mickey**
```dart
  var meter = Meter(0.001);
  print(meter);   // 1mm
  var mickey = meter.mickey;
  print(mickey);  // 4mickey
```


