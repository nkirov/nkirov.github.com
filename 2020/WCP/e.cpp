/*
 РСОП 2020
 
 Дадено е многозначно изображение, дефинирано върху естествените числа $E:$ N $\to$ N, като $E(x)$ e множеството от прости числа, които се получават като се добави една цифра (по-голяма от 0) отляво на числото $x$. Например $E(2)$ e празното множество, а $E(3) = \{13, 23, 43, 53, 73, 83\}$. Ако $X$ е множество от естествени числа, с $E(X)$ ще означаваме множеството $\{E(x), x \in X\}$. Сега можем да дефинираме $E^{(2)}(x) = E(E(x))$ и $E^{(k)}(x) = E(E^{(k-1)}(x)$ за $k = 3, 4, ...$. Да се напише програма, която при зададени $x$ и $k$ намира елементите на множеството $E^{(k)}(x)$.
 
 Вход
 За всеки тестов пример на стандартния вход на един ред се задават двете числа $x$ и $k$.
 
 Ограничения
 $2 \le x \le 1000$
 $2 \le k \le 15$
 Изход
 За всеки тестов пример на стандартния вход на един ред се отпечатват елементите на търсеното множество, наредени по големина - от най-малкия към най-големия. Ако множеството е празно, да се отпечати 0.
 
 Пример
 Вход
 13 2
 22 10
 Изход
 1613 2113 3313 3613 5113 6113 9613
 0
 */

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

typedef long long ll;
int n, m;
ll m10;

bool is_prime(ll k)
{
    for (ll i = 2; i*i <= k; i++)
        if (k%i == 0) return false;
    return true;
}

ll pp(ll k, ll i)
{
    ll num = 1, kk = k;
    while(kk>0)
    {
        kk /=10; num *=10;
    }
    return k + i*num;
}

ll nn(ll k)
{
    ll num = 1, kk = k;
    while(kk >= 10)
    {
        kk /=10; num *= 10;
    }
    return k - kk*num;
}

// int maxx = 0;
vector<ll> result;

int first(ll k)
{
 //   cout << "in " << k << endl;
    //    if (k > maxx) maxx = k;
    if (k < 10) return 0;
    if (k > m10)
    {
        result.push_back(k);
        return 0;
    }
    for(int i = 1; i <= 9; i++)
    {
        ll kn = pp(k, i);
   //     cout << kn << " ";
        if (is_prime(kn)) first(kn);
    }
    k = nn(k);
    return 0;
}

int main()
{
    while(cin >> n >> m)
    {
        int dig = 1, nn = n;
        while(nn >= 10)
        {
            dig++; nn /=10;
        }
//        cout << dig << endl;
    
            m10 = 1;
            for(int i = 1; i < m + dig; i++) m10 *= 10;
//        maxx = 0;
//        cout << first(n) << " " << maxx << endl;
            result.clear();
            first(n);
            if (result.size() == 0 || result[0] == n) cout << 0 << endl;
            else
            {
                sort(result.begin(), result.end());
//        cout << endl << "rtesult: ";
                for(int i = 0; i < result.size(); i++)
                    cout << result[i] << " ";
                cout << endl;
            }
    }
    return 0;
}
