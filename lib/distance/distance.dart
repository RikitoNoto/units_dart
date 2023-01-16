export 'meter.dart';
export 'yard.dart';

import 'meter.dart';
import 'yard.dart';

abstract class Distance{
  num get value;
  String get toStringRaw;

  Meter get meter;
  Yard get yard;
}

