#include <iostream>
#include <vector>
#include <string>

#include "triangle.h"
#include "rectangle.h"
#include "circle.h"
using namespace std;

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
