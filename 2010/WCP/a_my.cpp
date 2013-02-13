// Ортогонален решетъчен многоъгълник
// Тривиално решение
// Николай Киров
// 21.10.2009
#include<iostream>
#include <cmath>
using namespace std;

int main()
{   int a0, an, b0;
    while (cin >> a0 >> an >> b0 && a0 + an + b0 > 0)
    {
        bool flag = false;  
        int b0s = sqrt(b0) + 1;  
        for (int i = 1; i < b0s; i++)
            if (b0%i == 0)
            {
               double xy = b0/i + i;
               int D = xy*xy + 4*(an - a0);
               int sqrtD = sqrt(D);
               if (sqrtD*sqrtD != D) continue;
               int nn = (sqrtD - xy)/4;        
               if (4*nn != sqrtD - xy) continue;
               cout << nn << " "; flag = true;
            }  
            if (!flag) cout << "-1";
            cout << "\n";
    }
    return 0;
}
