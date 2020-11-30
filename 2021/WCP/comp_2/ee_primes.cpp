/*
 
NBU November 2020 Programming Contest
 
E. Брой прости числа

*/
#include <iostream>
#include <set>
#define MAXX 1000001 // 10^5 - members of sequence
using namespace std;

int is_prime(int p)
{
    if (p == 0 || p == 1) return 0;
    for (int i = 2; i*i <= p; i++)
        if (p%i == 0) return 0;
    return 1;
}

int a, b, m, k, p;

void solve2()
{
    set<int> ss;
    while(cin >> a >> b >> m >> k >> p)
    {
        int ii, i1 = 1, i2 = 1;
        for (int i = 2; i <= p; i++)
        {
            if (i < k) ii = i%m;
            else ii = (a*i1 + b*i2)%m;
            if(is_prime(ii)) ss.insert(ii);
            i2 = i1;
            i1 = ii;
        }
        cout << ss.size() << endl;
        ss.clear();
    }
}

int primes[MAXX]; // %MAXX - members of sequence

void get_primes()
{
    primes[0] = primes[1] = 0;
    for (int i = 2; i < MAXX; i++) primes[i] = is_prime(i);
}

void solve1()
{
    get_primes();
    while(cin >> a >> b >> m >> k >> p)
    {
        int ii, i1 = 1, i2 = 1;
        
        for (int i = 2; i <= p; i++)
        {
            if (i < k) ii = i%m;
            else ii = (a*i1 + b*i2)%m;
            if (primes[ii] > 0) primes[ii]++;
            i2 = i1;
            i1 = ii;
        }
        int sum = 0;
        for(int i = 2; i <= m; i++)
            if (primes[i] > 1)
            {
                sum++;
                primes[i] = 1;
            }
        cout << sum << endl;
    }
}

int main()
{
    solve1();       // faster
    //  solve2();
    return 0;
}
