import 'distance.dart';

class Meter extends Distance{
  Meter(this.value);

  @override final num value;
  @override String get toStringRaw => "${value}m";

  @override Meter get meter => Meter(value);
  @override Yard get yard => Yard((value * 10936) / 10000); // 1m is 1.0936yd
}
