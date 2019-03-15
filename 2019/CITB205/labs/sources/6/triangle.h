#ifndef TRI
#define TRI


#include <iostream>
#include <string>
#include "shape.h"
using namespace std;

class Triangle : public Shape {
public:
    Triangle();
    Triangle(double, double, double);
    virtual double area() const;
    virtual double perimeter() const;
    void print() const
    {
        cout << a << " " << b << " " << c << endl;
    }
    bool right() const;
private:
    double a, b, c;
};

#endif // TRI
