class Hamming {
  int? distance(String x,String y)
  {
    int n=0;
    if(x.length==y.length)
    {
      for(int i=0;i<x.length;i++)
      {
        if(x[i]!=y[i])
          n++;
      }
      return n;
    }
    return null;
  }
}
