class Luhn {
  bool valid(String number)
  {
    if(!RegExp("[0-9 ]{2,}").hasMatch(number)) return false;
    List<String> x = number.split('');
    int sum=0;
    for(int i=0;i<x.length;i++)
      for(int j=0;j<x[i].length;j++)
      {
        int k = int.parse(x[i][j]);
        sum+=j.isEven?(k*2<=9?k*2:k*2-9):k;
      }
    if(sum%10==0) return true;
    return false;
  }
}
