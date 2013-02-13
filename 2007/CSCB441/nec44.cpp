/* nec44.cpp   Огърлици
Дадени са неограничен брой мъниста от K цвята (K<10), от които се
правят огърлици с дължина N (N<10). Да се намери броят на всички различни
огърлици с дължина N.

Вход
Всеки ред на файла съдържа две числа K и N.
Числото 0 е последно във входа.

Изход:
За всеки ред от входа програмата записва на отделен ред
броя на различните огърлици.

Пример:
2 3
2 4
3 5
5 5
0
Решение на примера:
4
6
51
629 

*/
#include <iostream>
using namespace std;

int o[100]={0,1,2,3,4,5,6,7,8,9}; 
int s[10000][20]; // classes
int sn;
int K=9; // colors
int N=9; // length

void print()
{
/*  for (int i=0; i<N; i++) cout << o[i];
  cout << endl;
  for (int i=0; i<sn; i++) 
  {
     for (int j=0; j < 2*N; j++) cout << s[i][j];
     cout << endl;
  }
*/   
  bool flag = true; // new
  for (int i=0; i<sn && flag; i++)
     for (int j=0; j<N && flag; j++)
     {
        bool coins = true;
        for (int k=0; k<N && flag; k++)
           if (s[i][j+k] != o[k]) coins = false;
        if (coins) flag = false;   
     }     
  if (flag) // add
  {
    for (int i=0; i<N; i++) 
      s[sn][i] = s[sn][i+N] = o[i]; 
    sn++;               
  }          
}

void var(int nn)
{
 if (nn==N+1) print();
 else
 for (int i=0; i<K; i++)
 {
  o[nn-1]=i; var(nn+1);
 }
}

int main()
{
 do
 {
  sn=0;
  cin >> K;
  if (K>0)
  {
   cin >> N;
   for (int i=0; i<100; i++) o[i]=i;
   var(1);
   cout << sn << "\n";
  }
 }
 while (K>0);
 return 0;
}
