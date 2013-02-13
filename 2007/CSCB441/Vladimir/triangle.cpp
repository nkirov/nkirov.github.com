#include <iostream>
#include <cmath>
using namespace std;

bool exist(int a, int b, int c)
{
     if ((a + b) < c) return false;
     if ((a + c) < b) return false;
     if ((b + c) < a) return false;
     return true;
}

double height(int a, int b, int c)
{
     double p = (a + b + c)/2.0;
     double S = sqrt(p*(p-a)*(p-b)*(p-c));
     int max_side;
     if (a >= b && a >= c) max_side = a;
     else if (b >= a && b >= c) max_side = b;
     else max_side = c;
     double result = (2*S)/max_side;
     result = int(result*100);
     result = double(result/100);
     return result;
}
      


int main()
{
    int a;
    cin >> a;
    for (int i=0; i<a; i++)
    {   int a, b, c;
        cin >> a >> b >> c;
        bool q = exist(a, b, c);
        if (q == false)
            cout << 0 << endl;
        else
        {   double h;
            h = height(a, b, c);
            cout << h << endl;
        }
    }
    system("PAUSE");
    return 0;
}
