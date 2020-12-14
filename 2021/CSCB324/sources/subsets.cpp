/*
 2021  12.cpp
 
 Суми2021 [Meet in the middle, AL p. 54]

 Намиране на всички подмножества на едно множество.
 */

#include <iostream>
#include <bitset>
#include <set>
#include <vector>
using namespace std;

int a[5] = { 1, 2, 4, 7, 11 };
int n = 5;

typedef unsigned long long ull;

int main()
{
    cout << sizeof(ull) << endl;
    
    ull un = (1 << n);
    cout << n << " " << un << endl;
    
    for(ull u = 1; u < un; u++)
    {
        bitset<sizeof(ull)> bs(u);
        int sum1 = 0, sum2 = 0;
        for(int i = 0; i < n; i++)
        {
            cout << bs[i] << " ";
            if (bs[i]) sum1 += a[i];
            if ((1<<i) & u) sum2 += a[i];
        }
        cout << "  " << sum1 << " " << sum2 << endl;
    }
    return 0;
}
