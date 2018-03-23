#include <iostream>
#include <vector>
#include <string>
#include <cmath>

using namespace std;

class Shape {
public:
    virtual double area() const = 0;
    virtual double perimeter() const = 0;
};

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


int main()
{
    Triangle t(3, 4, 5), tt;
    t.print();
    cout << t.right() << " " << tt.right() << endl;

    Rectangle r(10, 15), r1;
    cout << r.check() << " " << r1.check() << endl;

    Circle c, c1;
    c1.add1();
    cout << c.area() << " " << c1.area() << endl;

    vector<Shape *> s;
    string let;
    while(cin >> let)
    {
        if (let == "T")
        {
            double a, b, c;
            cin >> a >> b >> c;
            s.push_back(new Triangle(a, b, c));
        }
        else if (let == "R")
        {
            double a, b;
            cin >> a >> b;
            s.push_back(new Rectangle(a, b));
        }
        else if (let == "C")
        {
            double r;
            cin >> r;
            s.push_back(new Circle(r));
        }
        else
        {
            cout << "ppppp" << endl;
            return 1;
        }
    }
    s.push_back(new Triangle());
    s.push_back(new Rectangle());
    s.push_back(new Circle());

    for (int i = 0; i < s.size(); i++)
        cout << s[i]->perimeter() << " "
        << s[i]->area() << endl;

    return 0;
}

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
