class HighScores {
  late final List<int> scores;
  HighScores(final List<int> scores)
  {
    this.scores=scores;
  }
  int personalBest()=>getMax(scores);
  int latest()=>scores[scores.length-1];
  List<int> personalTopThree()
  {
    List<int>custom = scores;
    int max1,max2,max3;
    max1=personalBest();
    custom.remove(max1);
    max2=getMax(custom);
    custom.remove(max2);
    max3=getMax(custom);
    return [max1,max2,max3];
  }
  int getMax(List<int> scores)
  {
    int max=scores[0];
    for(int i=1;i<scores.length;i++)   
      if(scores[i]>max)
        max=scores[i];
    return max;
  }
}
