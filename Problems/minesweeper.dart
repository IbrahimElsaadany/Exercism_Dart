class Minesweeper {
  late List<List> input;
  Minesweeper(final List<String> input)
  {
    if(input.isNotEmpty)
      this.input = input.map((e)=>e.split('')).toList();
    else
      this.input =[];
  }
  List<String> get annotated
  {
    for(int i=0;i<input.length;i++)
      for(int j=0;j<input[i].length;j++)
        if(input[i][j]=="*")
          plusAround(i, j);
    return input.map((e)=>e.join()).toList();
  }
  void plusAround(int a,int b)
  {
    for(int i=a-1;i<a+2;i++)
      for(int j=b-1;j<b+2;j++)
        if(i==a&&j==b) continue;
        else
          try{input[i][j]=plus(input[i][j]);}
          catch(IndexError){}
  }
  String plus(String inp)
  {
    if(inp=='*')
      return '*';
    else if(inp==' ')
      return '1';
    return (int.parse(inp)+1).toString();
  }
}
