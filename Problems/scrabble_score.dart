const Map<String,int> lp = {"AEIOULNRST":1,"DG":2,"BCMP":3,"FHVWY":4,"K":5,"JX":8,"QZ":10};
int score(String word)
{
  int sum=0;
  word=word.toUpperCase();
  for(int i=0;i<word.length;i++)
  {
    lp.forEach((key, value)
    {
      if(key.contains(word[i]))
        sum+=value;
    });
  }
  return sum;
}
