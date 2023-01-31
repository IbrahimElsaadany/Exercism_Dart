class Diamond {
  List<String> rows(String character)
  {
    List<String> back=[],current=[];
    for(int i=0;i<character.codeUnitAt(0)-65;i++)
    {
      current=[];
      for(int j=0;j<=2*(character.codeUnitAt(0)-65);j++)
      {
        if(j==character.codeUnitAt(0)-65-i||j==character.codeUnitAt(0)-65+i)
          current.add(String.fromCharCode(i+65));
        else current.add(' ');
      }
      back.add(current.join());
    }
    for(int i=character.codeUnitAt(0)-65;i>=0;i--)
    {
      current=[];
      for(int j=2*(character.codeUnitAt(0)-65);j>=0;j--)
      {
        if(j==character.codeUnitAt(0)-65-i||j==character.codeUnitAt(0)-65+i)
          current.add(String.fromCharCode(i+65));
        else current.add(' ');
      }
      back.add(current.join());
    }
    return back;
  }
}
