import 'distance.dart';

class Meter extends Distance{
  Meter(this.value);

  @override final num value;
  @override String get toStringRaw => "${value}m";
}
