class CollatzConjecture
{
  int steps(int n)
  {
    int no=0;
    while(n!=1)
    {
      n.sign==1? n.isEven?n~/2:n=n*3+1:throw Error();
      no++;
    }
    return no;
  }
}
