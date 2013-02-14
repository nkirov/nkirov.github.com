#include <iostream>
#include <string>
using namespace std;

template <class T>
void checkl(string st, T n)
{
 T n1 = n = 1;
 do { n1=n; n=2*n+1; }
 while (n>n1);
 cout << n << "  " << n1 << "\n";
 int s = sizeof(n);
/* получаване на максималното число в типа - всичките му битове са 1 */
 n=1;
 for (int i=1; i<8*s; i++) n=(n<<1)+1;
 cout << st << ": " << s << " " << n << "\n";
 }

int main()
{
 unsigned int n1=1;
 checkl("unsigned int", n1);
 unsigned long n2=1;
 checkl("unsigned long", n2);
 unsigned long long n3=1;
 checkl("unsigned long", n3);
 return 0;
}
