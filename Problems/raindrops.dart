class Raindrops {
  String convert(int inp)
  {
    String result="";
    if(inp%3==0) result="Pling";
    if(inp%5==0) result="${result}Plang";
    if(inp%7==0) result="${result}Plong";
    return result==""?inp.toString():result;
  }
}
