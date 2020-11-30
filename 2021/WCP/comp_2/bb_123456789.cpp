/*
 NBU November 2020 Programming Contest

В. 123456789
Да се намери броят на всички m-цифрени естествени числа, които са съставени от n_0 нули, n_1 единици, n_2 двойки, ... n_9 девятки в десетичния си запис, т.е. цифрата i се среща точно n_i пъти, i = 0,1,2,...,9.

 Вход. За всеки тестов пример от стандартния вход се четат 10 цели неотрицателни числа – ni,за които ...
 0 < m < /sum_{i=0}^9 n_i < 25.

 Изход. За всеки тестов пример на стандартния изход на нов ред се отпечатва резултата.
 
 Пример:
 Вход.
1 1 1 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 2 3

Изход.
4
10
 
*/
// check:
// https://www.wolframalpha.com
#include<iostream>
using namespace std;

typedef unsigned long long ull;

ull gcd(ull a, ull b)
{
  ull swap;
  while (b > 0) { swap = b; b = a%b; a = swap; }
  return a;
}

ull fac(int a)
{
    ull res = 1;
    for (int i=1; i<=a; i++) res *= i;
    return res;
}

int n[10], m;

ull solve1()
{
    ull res = 1, den = 1;
    int i = 1;
    for (int j = 0; j < 10; j++)
    {
        int k = 1;
        while (i <= m && k <= n[j])
        {
            res *= i; den *= k;
            ull g;
            if ((g = gcd(res, den)) > 1)
            { res /= g; den /= g; }
            i++; k++;
        }
    }
    return res/den;
}

ull solve2()
{
    ull den = 1;
    for (int i=0; i<10; i++) den *= fac(n[i]);
    return fac(m)/den;
}

int main()
{
    while(cin >> n[0]) 
    {
        m = n[0];
        for (int i=1; i<10; i++)
        {
            cin >> n[i]; m += n[i];
        }
        ull s1 = solve1();
/*
        ull s2 = solve2();
        cout << m << endl;
        cout << s2 << endl;
        cout << s1 << endl;
*/        
        
        ull s11 = 0, s22 = 0;
        if (n[0] > 0)
        {
            n[0]--; m--;
            s11 = solve1();
/*
            s22 = solve2();
            cout << m << endl;
            cout << s22 << endl;
            cout << s11 << endl;
*/            
        }
        cout << s1 - s11 << endl;
    }
    return 0;
}
