class SumOfMultiples {
  int sum(final List<int> multiples,int n)
  {
    int sumOfNumbers=0;
    for(int i=1;i<=n;i++)
    {
      multiples.forEach((e)
      {
        if(i%e==0)
          sumOfNumbers+=i;
      });
    }
    return sumOfNumbers;
  }
}
