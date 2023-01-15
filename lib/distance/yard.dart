import 'distance.dart';

class Yard extends Distance{
  Yard(this.value);

  @override final num value;
  @override String get toStringRaw => "${value}yd";

  @override Meter get meter => Meter(meter: value/1.0936);
  @override Yard get yard => Yard(value);
}
