
#include <iostream>
#include <cmath>
#include <vector>
#define PII 3.14
using namespace std;

class Shape {
public:
    virtual double perimeter() const = 0;
    virtual double area() const = 0;
};

class Triangle: public Shape {
public:
    Triangle()
    {
        a = b = c = 1;
    }
    Triangle(double aa, double bb, double cc)
    {
        a = aa; b = bb; c = cc;
    }
    virtual double perimeter() const
    { return a + b + c; }
    virtual double area() const
    {   double p = (a + b + c)/2;
        return sqrt(p*(p-a)*(p-b)*(p-c));
    }
private:
    double a, b, c;
};

class Circle: public Shape {
public:
    Circle() { r = 1; }
    Circle(double rr) { r = rr; }
    virtual double perimeter() const
    { return 2*PII*r; }
    virtual double area() const
    { return PII*r*r; }
private:
    double r;
};

class Rectange: public Shape {
public:
    Rectange()
    {
        a = b = 1;
    }
    Rectange(double aa, double bb)
    {
        a = aa; b = bb;
    }
    virtual double perimeter() const
    { return 2*(a + b) ; }
    virtual double area() const
    {
        return a*b;
    }
private:
    double a, b;
};

void print(vector<Shape*> sh)
{
    for(int i = 0; i < sh.size(); i++)
        cout << sh->area() << " " << st->perimeter() << endl;
}

int main()
{
    vector<Shape*> sh;
    char ch;
    while(cin >> ch)
    {
        double a, b, c, r;
        if (ch == 'T')
        {
            cin >> a >> b >> c;
            sh.push_back(Triangle(a, b, c));
        }
        else if (ch == 'R')
        {

        }
        else if (ch == 'C')
        {

        }
        else {};
    }
    return 0;
}
