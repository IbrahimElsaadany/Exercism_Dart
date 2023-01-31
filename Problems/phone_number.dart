class PhoneNumber {
   String? clean(String number)
   {
    RegExpMatch? x= RegExp(r"^(?<country>\+1 )?[ -(]?(?<area>[2-9]{1}\d{2})\)?[ -]?(?<exchange>\d{3})[ -]?(?<subscriber>\d{4})$").firstMatch(number);
    if(x==null)
      return null;
    return x.groups([2,3,4]).join();
   }
}
