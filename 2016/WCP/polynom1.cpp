#include <iostream>
using namespace std;

int deg = 8;
int x1 = 1, x2 = 3, x3 = 3, x4 = 5;
int coef[9] = { 1, -22, 201, -986, 2804, -4662, 4365, -2106, 405 };

int poly(int x)
{
    int r = (x - x1)*(x - x2)*(x - x3)*(x - x4);
    r = r*(x*x - 5*x + 3)*(x*x - 5*x + 3);
    cout << x << " " << r << endl;
    return r;
}

int poly1(int x)
{
    int r = coef[0];
    for (int i = 1; i < deg + 1; i++)
        r = x * r + coef[i];
    cout << x << " " << r << endl;
    return r;
}

void div1(int k)    // /(x - k)
{
    for (int i = 1; i < deg; i++)
            coef[i] = coef[i] + k*coef[i-1];
    deg--;

    cout << "deg = " << deg << "  coef = ";
    for (int i = 0; i < deg; i++) cout << coef[i] << " ";
    cout << endl;
}

int main()
{
    int num = 0, i = 0;
    while(i <= 10)
        if (!poly1(i))
        {
        div1(i);
        num++;
        }
        else i++;
    cout << "num = " << num << endl;
    return 0;
}

