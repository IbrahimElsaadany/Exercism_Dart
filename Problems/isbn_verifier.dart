bool isValid(String number)
{
  int result=0;
  final List<int> x = number.split('-').join('').split('').map((String e)=>int.parse(e)).toList();
  for(int i=0;i<x.length;i++)
    result+=i*(x.length-i);
  return result%11==0;
}
