// https://action.informatika.bg/problems/229
/*
 За даден низ $s$, състоящ се от n малки латински букве, дефинираме квадратна честотна функция като сума от квадратите на броя на срещанията на различните букви в низа.  Дефинираме и операция смяна на буква -- заместване на всички срещания на една буква с друга буква.
 Да се намери максималната стойност на квадратната честотна функция за низа, получен при прилагане на най-много k пъти на тази операция.
 
 Вход
  За всеки тестов пример на стандартния вход на един ред се задават по две естествени числа n -- дължината на низа и k -- максимален брой на прилагане на операцията смяна на буква. На следващия ред е зададен низа.
 
 Ограничения
 $n, k < 100$
 
 Изход
 За всеки тестов пример на стандартния изход на отделен ред се отпечатва отговора.
 
 Пример
 вход
 11 1
 abrakadabra
 
 изход
 55
 
 Обяснение
 Буква a се среща 5 пъти, b -- два пъти, r -- два пъти, k -- 1 път и d -- един път. Стойността на квадратната честотна функция за този низ е $5^2 + 2.2^2 + 2.1^2 = 35$.  Като заместим a с r получаваме низа rbrrkrdrbrr с квадратна честотна функция 55.
 
 */

// това решение е за k = 1 !!!
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <cstdlib>
using namespace std;

bool comp(int a, int b)
{ return a > b; }

vector<int> a(30);

void solve1()
{
     sort(a.begin(), a.end(), comp);
}

void swap(int &a, int &b)
{
    int c = a;
    a = b; b = c;
}

void solve2() // k = 1
{
    int max = 0, maxi = 0;
    for (int i=0; i < 30; i++)
        if (a[i] > max)
    { max = a[i]; maxi = i; }
    swap(a[0], a[maxi]);
    max = 0; maxi = 0;
    for (int i=1; i < 30; i++)
        if (a[i] > max)
        { max = a[i]; maxi = i; }
    swap(a[1], a[maxi]);
}

void generate()
{
    cout << int('z' - 'a') << endl;
    for (int i=0; i<99; i++) cout << char('a' + rand()%26);
    cout << endl;
}

void problem()
{
    string s;
    int k = 2;
    while(cin >> s >> k)
{
    k++;
    for (int i=0; i < 30; i++) a[i] = 0;
        
        for (int i=0; i < s.length(); i++)
            if (s[i] >= 'a' and s[i] <= 'z') a[s[i] - 'a']++;
    /* k = 2
     int sum = 0;
     for (int i=0; i < 30; i++) sum += a[i]*a[i];
     
     //   solve1();
     solve2();
     
     cout << sum + 2*a[0]*a[1]<< endl;
     */
    solve1();
    int ksum = 0;
    for (int i=0; i < k && i < 30; i++) ksum += a[i];
        ksum *= ksum;
//    cout << k << " " << ksum << endl;
        for (int i=k; i < 30; i++) ksum += a[i]*a[i];
            
            cout << ksum << endl;
            }
}

int main()
{
//    generate();
    problem();
    return 0;
}

