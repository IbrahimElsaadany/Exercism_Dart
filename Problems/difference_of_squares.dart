import 'dart:math';
class DifferenceOfSquares {
  num squareOfSum(int n)
  {
    final List<int> numbers=List.generate(n,(int i)=>i+1);
    return pow(numbers.reduce((v,e)=>v+e),2);
  }
  num sumOfSquares(int n)
  {
    final List<int> numbers=List.generate(n,(int i)=>i+1);
    return numbers.map((e)=>e*e).reduce((v,e)=>v+e);
  }
  num differenceOfSquares(int n) => squareOfSum(n) - sumOfSquares(n);
}
