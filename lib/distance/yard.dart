import 'distance.dart';

class Yard extends Distance{
  Yard(this.value);

  @override final num value;
  @override String get toStringRaw => "${value}yd";
}
