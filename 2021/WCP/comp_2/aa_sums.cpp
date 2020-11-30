/*
 
 NBU November 2020 Programming Contest
 
 A. Cуми
 Дадено е мултимножество от цели числа. Напишете програма, която да брои колко различни суми може да се получат от събиране на двойки числа от множеството.
 
 Вход
 На стандартния вход се задават много тестови примери. Всеки пример се състои от число k  - брой на елементите на множеството и още k числа за самите елементи.
 
 Ограничения
 0 < k <= 100
 Елементине на множеството са цели числа в интервала [-100, 100]
 
 Изход
 За всеки тестов пример на отделен ред се отпечатва отговора.
 
 Пример.
 Вход
 3
 1 1 1
 4
 1 2 3 4
 изход
 1
 5
 */

#include<iostream>
#include<set>
#include<cstdlib>
using namespace std;

int a[100];

void solve()
{
    int k;
    while (cin >> k)
    {
        for (int i=0; i<k; i++) cin >> a[i];
        set<int> ss;
        for (int i=0; i<k; i++)
            for (int j=i+1; j<k; j++)
                ss.insert(a[i] + a[j]);
        cout << ss.size() << endl;
    }
}

void generate()
{
    cout << 100 << endl;
    for(int i = 0; i < 100; i++) cout << rand()%2000 - 1000 << " ";
    cout << endl;
}

int main()
{
    solve();
//    generate();
    return 0;
}
