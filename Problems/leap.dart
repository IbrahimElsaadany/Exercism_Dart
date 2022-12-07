class Leap {
  bool leapYear(int year)
  {
    if(year%4==0)
      return year%400==0?true:false;
    return false;
  }
}
