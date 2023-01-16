import 'package:flutter_test/flutter_test.dart';

void expect_almost_eq(
  num actual,
  num matcher,
  int significantDigits, {
  String? reason,
  dynamic skip, // true or a String
}){
  if(_isInt(actual) && _isInt(matcher)){
    expect(actual, matcher);
  }
  else{
    num actualSignificant = _trimOutOfSignificant(actual, significantDigits);
    num matcherSignificant = _trimOutOfSignificant(matcher, significantDigits);
    expect(actualSignificant, matcherSignificant);
  }
}

bool _isInt(num value){
  return (value - (value.toInt()) == 0);
}

num _trimOutOfSignificant(num value, int significantDigits){
  String significantString = value.toString().replaceAllMapped(RegExp('([0-9]*)\.([0-9]{0,$significantDigits})'), (match){
    if((match.group(2) == '') || match.group(2) == '0'){
      return match.group(1)!;
    }
    return "${match.group(1)!}.${match.group(2)!}";
  });

  if(significantString.contains('.')){
    return double.parse(significantString);
  }
  else{
    return int.parse(significantString);
  }
}
