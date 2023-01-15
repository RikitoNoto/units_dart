import 'distance.dart';

class Yard extends Distance{
  Yard({
    num? inch,
    num? feet,
    num? yard,
    num? rod,
    num? pole,
    num? perch,
    num? chain,
    num? furlong,
    num? mile,
  }) :
      _yard = yard ?? 0,
      _inch = inch,
      _feet = feet,
      _rod = rod,
      _pole = pole,
      _perch = perch,
      _chain = chain,
      _furlong = furlong,
      _mile = mile
  ;

  final num? _inch;
  final num? _feet;
  final num? _yard;
  final num? _rod;
  final num? _pole;
  final num? _perch;
  final num? _chain;
  final num? _furlong;
  final num? _mile;

  @override num get value {
    return _getScalingValue(yardMulti: 1);
  }

  num get mile => furlong / 8;

  num get furlong {
    num sum = 0;
    if(_mile != null) sum += _mile! * 8;
    if(_furlong != null) sum += _furlong! * 1;
    if(_chain != null) sum += _chain! * 0.1;
    if((_rod != null) || (_pole != null) || (_perch != null)) sum += ((_rod ?? 0) + (_pole ?? 0) + (_perch ?? 0)) * 0.025;
    if(_yard != null) sum += _yard! / 220;
    if(_feet != null) sum += _feet! / 660;
    if(_inch != null) sum += _inch! / 7920;

    return sum;
    // return _getScalingValue(yardMulti: 1/220);
  }

  num get chain {
    return _getScalingValue(yardMulti: 1/22);
  }

  num get rod {
    return _getScalingValue(yardMulti: 1/5.5);
  }
  num get pole => rod;
  num get perch => rod;
  num get feet => value * 3;
  num get inch => value * 36;

  @override String get toStringRaw => "${value}yd";

  @override Meter get meter => Meter(meter: value/1.0936);
  @override Yard get yard => Yard(yard: value);


  num _getScalingValue({
    required num yardMulti,
  }){
    num sum = 0;
    if (_mile != null) sum += _mile! * 1760 * yardMulti;
    if (_furlong != null) sum += _furlong! * 220 * yardMulti;
    if (_chain != null) sum += _chain! * 22 * yardMulti;
    if ((_rod != null) || (_pole != null) || (_perch != null)) sum += ((_rod ?? 0) + (_pole ?? 0) + (_perch ?? 0)) * 5.5 * yardMulti;
    if (_yard != null) sum += _yard! * yardMulti;
    if (_feet != null) sum += _feet! * yardMulti / 3;
    if (_inch != null) sum += _inch! * yardMulti / 36;

    return sum;
  }
}
