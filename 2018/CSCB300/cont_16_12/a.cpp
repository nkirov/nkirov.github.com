// https://action.informatika.bg/problems/145
// http://nikolay.kirov.be/2018/CSCB300/tasks/t03.html

// Да се намери броят на всички естествени числа, които имат n нули и m единици в двоичния си запис.
// 0 < m, n < 32 (проверено с WolframAlpha)

#include<iostream>
using namespace std;

typedef unsigned long long ull;

ull gcd(ull a, ull b)
{ ull swap;
  while (b > 0) { swap = b; b = a%b; a = swap; }
  return a;
}

ull fac(int a)
{
    ull res = 1;
    for (int i=1; i<=a; i++) res *= i;
    return res;
}

int n, m;

ull solve1()
{
    ull res = 1, den = 1;
    int i = m+1, j = 2;
    while (i <= m+n || j <= n)
    {
        ull g;
        while ((j <= n) && ((g = gcd(res, j)) > 1))
        { res /= g; j++; den = den*(j/g); }
//        cout << res << " " << den << " " << i << endl;
        if (i <= n+m)
        {
            res *= i;
            if ((g = gcd(res, den)) > 1)
            { res /= g; den /= g; }
            i++;
        }
    }
    return res/den;
}

ull solve2()
{
    return fac(n+m)/fac(n)/fac(m);
}

ull solve3()
{
    ull kk = 1;
    for (int i = m+1; i <= m+n; i++)
        kk *= i;
    return kk/fac(n);
}

int main()
{
    
    while(cin >> m >> n) // m > n
    {
        cout << solve1() << endl;
 //       cout << solve2() << endl;
 //       cout << solve3() << endl;
    }
    return 0;
}
