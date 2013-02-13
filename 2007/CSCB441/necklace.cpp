
#include <iostream>
using namespace std;

int o[100];
int k = 9, n = 9;
long num = 0, snum = 0;

void calc()
{  num++;
   bool sym = true;
   for (int i = 0; i < n/2; i++)
     if (o[i] != o[n - i - 1]) sym = false;
   if (sym) snum++;
}

void var(int nn)
{ if (nn == n + 1) calc();
  else
    for (int i = 0; i < k; i++)
    {  o[nn - 1] = i; var(nn + 1);
 }
}

int main()
{  while(cin >> k >> n)
   {  for (int i = 0; i < 100; i++) o[i] = i;
      var(1);
      cout << num << "   " << snum << "  " << (num - snum)/2 + snum << "\n";
   }
  return 0;
}
