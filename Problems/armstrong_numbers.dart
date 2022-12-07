import 'dart:math';
class ArmstrongNumbers {
  bool isArmstrongNumber(String number)
  {
    int length = number.length;
    return int.parse(number)==number.split('').
      map((e) => num.parse(e)).
      reduce(( value, element)=>
        value+pow(element,length));
  }
}
