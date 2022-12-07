// Incomplete solution !

class Forth {
  dynamic evaluate(String code)
  {
    final List splitted = code.split(" ");
    if("+-/*".contains(splitted.last))
    {
      if(code.endsWith('+'))
        return num.parse(splitted[0])+num.parse(splitted[1]);
      else if(code.endsWith('-'))
        return num.parse(splitted[0])-num.parse(splitted[1]);
      else if(code.endsWith('*'))
        return num.parse(splitted[0])*num.parse(splitted[1]);
      else
        return num.parse(splitted[0])/num.parse(splitted[1]);
    }
  }
}
