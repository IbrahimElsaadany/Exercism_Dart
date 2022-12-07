class WordCount {
  Map<String,int> countWords(String input)
  {
    input = input.toLowerCase();
    Map<String,int> back=Map();
    RegExp regExp = RegExp(r"\w+'?\w+");
    List x = regExp.allMatches(input).map((e)=>e.groups([0])[0]).toList();
    
    x.forEach((e)
    {
      if(!back.containsKey(e))  back[e]=1;
      else back[e]=back[e]!+1;
    });
    return back;
  }  
}
