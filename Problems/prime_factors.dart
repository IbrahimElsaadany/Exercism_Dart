class PrimeFactors {
  List<int> factors(int number)
  {
    List<int> outcome =[];
    for(int i=2;i<number;i++)
      if(isPrime(i)&&number%i==0) outcome.add(i);
    return outcome;
  }
  bool isPrime(int n)
  {
    for(int i=2;i<n;i++)
      if(n%i==0) return false;
    return true;
  }
}
