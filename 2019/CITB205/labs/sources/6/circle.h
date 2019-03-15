#ifndef CIR
#define CIR

#include <cmath>
#include "shape.h"
using namespace std;

class Circle : public Shape {
public:
    Circle()
    { r = 1; }
    Circle(double rr)
    {
        r = rr;
    }
    virtual double area() const
    {
        return M_PI*r*r;
    }
    virtual double perimeter() const
    {
        return 2*M_PI*r;
    }
    void add1()
    {
        r += 1;
    }
private:
    double r;
};

#endif
