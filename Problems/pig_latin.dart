String translate(String word)
{
  RegExp regex1 = RegExp('a|e|i|o|u|xr|yt');
  RegExp regex2 = RegExp("([a-z^$regex1]|ch)");
  RegExp regex3 = RegExp("${regex2}qu");
  if(word.startsWith(regex1))
    word=word+'ay';
  else if(word.startsWith(regex3))
  {
    String match = regex3.firstMatch(word)!.group(0)!;
    word=word.substring(match.length)+match+"ay";
  }
  else if(word.startsWith(regex2))
  {
    String match=regex2.firstMatch(word)!.group(0)!;
    word=word.substring(match.length)+match+"ay";
  }
  return word;
}
