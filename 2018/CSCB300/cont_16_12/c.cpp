/*
 9.11.2013 contest EDU/2014/WCP/9_11_2013 задача е
 
Напишете програма, за събиране и изваждане на прости дроби, като представите резултата във вид на несъкратима дроб.

Стандартен вход:
Всеки пример се задава със сума или разлика на няколко (най-малко 2 и не повече от 20) дроби и цели числа на отделен ред, като дробите са представени във вида m/n, където m и n са естествени числа. Всички числители, знаменатели и цели числа са по-малки от 10001. Входът съдържа няколко примери.

Стандартен изход:
За всеки пример на изхода се записва резултата като несъкратимата дроб по същия начин, както зададените на входа дроби. Когато решението е цяло число, то се записва по нормалния начин. Тестовите примери са такива, че резултатите се записват с числа по-малки от 10001.

Пример:
1/2 + 1/3
1/3 - 1/2 + 1
1/3 - 1/2 - 1/6

Решение на примера:
5/6
5/6
-1/3
*/
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

unsigned numerator = 0, denominator = 1;
int sign = 1;  
string s;   

void get_item(unsigned& n, unsigned& d)
{
     istringstream is(s);
     is >> n;
     char ch;
     if (is >> ch && ch == '/') is >> d; 
     else d = 1;
//     cout << n << " : " << d << endl;
}

void add_item(unsigned n, unsigned d, int s)
{
     int n1 = sign*numerator*d + s*denominator*n;
     denominator = d*denominator;
     if (n1 < 0) 
     {
            numerator = -n1;
            sign = -1;
     }
     else 
     {
          numerator = n1;
          sign = 1;
     }
//    cout << numerator << " --- " << denominator << endl;
}

unsigned gcd2(unsigned a, unsigned b) 
{ return (0 == b) ? a : gcd2(b, a%b); }

void simplify()
{
     unsigned div = gcd2(numerator, denominator);
     numerator = numerator/div;
     denominator = denominator/div;
}

int main()
{
    string line;
    while(getline(cin, line))
    {
      numerator = 0, denominator = 1, sign = 1;                 
      istringstream is(line);
      unsigned num = 0, den = 1;
      int si = 1;
      while(is >> s) 
      {
               if (s == "+") si = 1;
               else if (s == "-") si = -1;
               else 
               {
                    get_item(num, den);
                    add_item(num, den, si);
               } 
               simplify();    
      }
      if (sign == -1) cout << "-";
      cout << numerator;
      if (denominator > 1) cout << "/" << denominator;
      cout << endl;                 
    }
    return 0;
}
