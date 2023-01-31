class Triangle {
  bool isTriangle(double a,double b,double c) => a>0&&b>0&&c>0&&a+b>=c&&b+c>=a&&a+c>=b;
  bool isosceles(double a,double b,double c) => isTriangle(a,b,c)&&a==b||a==c||b==c;
  bool equilateral(double a,double b,double c) => isTriangle(a,b,c)&&a==b&&a==c;
  bool scalene(double a,double b,double c) => isTriangle(a,b,c)&&a!=b&&a!=c&&b!=c;
}
