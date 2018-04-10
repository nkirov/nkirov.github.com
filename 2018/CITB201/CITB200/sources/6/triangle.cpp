#include <cmath>
#include "triangle.h"

using namespace std;

Triangle::Triangle(double aa, double bb, double cc)
{
    if (aa <= bb + cc && bb <= aa + cc && cc <= aa + bb)
    {
        a = aa; b = bb; c = cc;
    }
    else a = b = c = 1;
}

Triangle::Triangle()
{
    a = b = c = 1;
}

double Triangle::area() const
{
    double p = (a+b+c)/2;
    return sqrt(p*(p-a)*(p-b)*(p-c));
}

double Triangle::perimeter() const
{
    return a+b+c;
}

 bool Triangle::right() const
 {
     const double EPS = 1e-10;
     return fabs(a*a + b*b - c*c) < EPS or
        fabs(b*b + c*c - a*a) < EPS or
        fabs(a*a + c*c - b*b) < EPS;
 }
