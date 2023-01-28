class PascalsTriangle {
  List<List<int>> rows(int n)
  {
    List<List<int>> x;
    n==0?x=[]:x=[[1]];
    for(int i=0;i<n;i++)
    {
      List<int> y=[];
      for(int j=0;j<=x[i].length;j++)
          y.add((j<x[i].length?x[i][j]:0)+(j-1>=0?x[i][j-1]:0));
      x.add(y);
    }
    return x;
  }
}
