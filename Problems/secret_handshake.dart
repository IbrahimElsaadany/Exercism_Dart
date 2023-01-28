import 'dart:math';
class SecretHandshake {
  static const List<String> secret = ["wink","double blink","color your eyes","jump"];
  List<String> commands(int n)
  {
    List<String> x = toBinary(n).toString().split('').reversed.toList();
    List<String> outcome=[];
    for(int i=0;i<x.length;i++)
      if(x[i]=='1')
        if(i<4) outcome.add(secret[i]);
        else outcome=outcome.reversed.toList();
    return outcome;
  }
  int toBinary(int n)
  {
    int power = 0,number=0;
    while(n!=0)
    {
      number+=n%2*pow(10, power++).toInt();
      n~/=2;
    }
    return number;
  }
}
