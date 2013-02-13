/*01*/  #include <iostream>
/*02*/  #include <cmath>
/*03*/  using namespace std;
/*04*/ 
/*05
  06     Tests  whether two floating-point numbers are 
  07     approximately equal.
  08     @param x a floating-point number
  09     @param y another floating-point number
  10     @return true if x and y are approximately equal
  11*/
/*12*/  bool approx_equal(double x, double y)
/*13*/  { const double EPSILON = 1E-14;
/*14*/    if (x == 0) return fabs(y) <= EPSILON;
/*15*/    if (y == 0) return fabs(x) <= EPSILON;
/*16*/    return fabs(x - y) / max(fabs(x), fabs(y)) <= EPSILON;
/*17*/  }
/*18*/
/*19   Function to be tested 
  20  
  21     Computes the square root using Heron's formula
  22     @param a an integer >= 0
  23     @return the square root of a
  24*/
/*25*/  double squareroot(double a)
/*26*/  { if (a == 0) return 0;
/*27*/
/*28*/   double xnew = a;
/*29*/     double xold;
/*30*/     do
/*31*/     {  xold = xnew;;
/*32*/        xnew = (xold + a / xold) / 2;
/*33*/     }
/*34*/     while (!approx_equal(xnew, xold));
/*35*/     return xnew;
/*36*/  }
/*37*/  
/*38      Test harness 
  39*/  int main()
/*40*/  {  double x;
/*41*/     for (x = 0; x <= 10; x = x + 0.5)
/*42*/     {  double y = squareroot(x);
/*43*/        cout << "squareroot of " << x << " = " << y << "\n";
/*44*/     }
/*45*/     return 0;
/*46*/  }
