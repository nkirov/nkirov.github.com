#include <fstream>
//#include <iostream>
#define MAX 30000
using namespace std;

unsigned long fib_num[100];
int num;

void fib(unsigned long n)
{ unsigned long a1=1, a2=1, a=1;
  fib_num[0] = fib_num[1] = a1;  
  int i = 2;
  while (a<=n)
  { a = a1 + a2;
    a1=a2; a2=a;
    fib_num[i] = a; i++;
//    cout << a << " ";
  }
  num = i-1;
//  cout << endl << num << endl;
}

int solve(unsigned long n)
{ int k = 0, i = num;
  while (n>0)
  {
   while (fib_num[i]>n) i--;
   n-=fib_num[i]; k++;
  }
//  cout << " -> " << k << endl;
  return k;
}

int main()
{ fib(1000001);
  ifstream fin("sfib.inp");
  ofstream fout("sfib.out"); 
  unsigned long n; 
  fin >> n;
  while (n>0)
  { 
//  cout << n << endl;
    fout << solve(n) << endl;
    fin >> n;
  }
//  char ch; cin >> ch;
  return 0;
}
