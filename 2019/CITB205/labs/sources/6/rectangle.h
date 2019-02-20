#ifndef REC
#define REC

#include "shape.h"

class Rectangle : public Shape {
public:
    Rectangle()
    { a = b = 1; }
    Rectangle(double aa, double bb)
    {
        a = aa; b = bb;
    }
    double area() const
    {
        return a*b;
    }
    double perimeter() const
    {
        return 2*a + 2*b;
    }
    bool check() const
    {
        return a == b;
    }
private:
    double a, b;
};

#endif
