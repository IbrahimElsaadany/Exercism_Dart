class NthPrime 
{
  int prime(int number)
  {
    int no=0,outcome=1;
    while(no<number) if(isPrime(++outcome)) no++;
    return outcome;
  }
  bool isPrime(int n)
  {
    bool flag=true;
    for(int i=2;i<n;i++)
      if(n%i==0)
      {
        flag=false;
        break;
      }
    return flag;
  }
}
