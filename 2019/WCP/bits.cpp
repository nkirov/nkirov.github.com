
/*
 EDU/2016/WCP/5_12_2016
  Да се намери сумата от битовете на целите числа в даден затворен интервал. Битовете на числото са цифрите в двоичното му представяне.
 Вход
 За всеки пример на стандарния вход са дадени две естествени числа a и b, 0 < a <= b < 18446744073709551615, определящи интервала, като b - a <= 1000.
 Изход
 За всеки интервал на отделен ред се извежда търсената сума.
 Пример:
 вход
 1 4
 10 10
 изход
 5
 2

 */


#include <iostream>
using namespace std;

typedef unsigned long long ull;

int sumbits(ull k)
{
    int sum = 0;
    while (k > 0)
    {
        sum += k%2;
        k /= 2;
    }
    return sum;
}

int sumbits1(ull k)
{
    int sum = 0;
    ull one = 1;
    int num = sizeof(ull)*8;
    for (int i = 0; i < num; i++)
        sum += static_cast<int>((((one << i) & k) > 0));
    return sum;
}

int main()
{
    ull k = 0, l;
//    cout << ~k << " " << sizeof(ull) << endl;
    while (cin >> k >> l)
    {
        int sumi = 0;
        for (ull i = k; i <= l; ++i)
            sumi += sumbits(i);
        cout << "  " << sumi << endl;
    }
    return  0;
}
