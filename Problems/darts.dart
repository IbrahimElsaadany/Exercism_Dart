import "dart:math";
class Darts {
  int score(double x,double y)
  {
    double d = sqrt(x*x+y*y);
    if(d>10) return 0;
    else if(d>5) return 1;
    else if(d>1) return 5;
    return 10;
  }
}
