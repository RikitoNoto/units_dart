import 'distance.dart';

class Meter extends Distance{
  Meter({
    num? kilometer,
    num? meter,
    num? millimeter,
    num? micrometer,
  }) :
        _kilometer = kilometer,
        _meter = meter,
        _millimeter = millimeter,
        _micrometer = micrometer;

  final num? _kilometer;
  final num? _meter;
  final num? _millimeter;
  final num? _micrometer;

  num get kilometer => _getScalingValue(meterMulti: 0.001,);
  @override num get value => _getScalingValue(meterMulti: 1,);
  num get millimeter => _getScalingValue(meterMulti: 1000,);
  num get micrometer => _getScalingValue(meterMulti: 1000000,);

  @override String get toStringRaw => "${value}m";

  @override Meter get meter => Meter(kilometer: _kilometer, meter: _meter, millimeter: _millimeter, micrometer: _micrometer);
  @override Yard get yard => Yard((value * 10936) / 10000); // 1m is 1.0936yd

  num _getScalingValue({
    required num meterMulti,
  }){
    num sum = 0;
    if(_kilometer != null) sum += _kilometer! * meterMulti * 1000;
    if(_meter != null) sum += _meter! * meterMulti;
    if(_millimeter != null) sum += _millimeter! * meterMulti / 1000;
    if(_micrometer != null) sum += _micrometer! * meterMulti / 1000000;
    return sum;
  }
}
