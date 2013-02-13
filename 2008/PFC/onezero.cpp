#include <iostream>
#define H 1000000
using namespace std;

char a[H];

void onezero()
{
 int n;
 cin >> n;
 long i, j, temp;
 for (int ind = 0; ind < n; ind++)
 {
  cin >> i >> j;
  if (i > j) 
  { 
   temp=i; 
   i=j; 
   j=temp; 
  }
  char pat = a[i];
  bool yes = true;
  for (long lind = i + 1; (lind <= j) && yes; lind++)
   if (a[lind] != pat) yes = false;
  cout << (yes?"Yes":"No") << "\n";
 }
}

int main()
{
 int num=0;
 while (cin >> a)
 {
  num++;
  cout << "Case " << num << ":\n";
  onezero();
 }
 return 0;
}
