// gcd.cpp
#include <iostream>
using namespace std;

unsigned gcd1(unsigned a, unsigned b)
{ 
  unsigned swap;
  while (b > 0) { swap = b; b = a%b; a = swap; }
  return a;
}

unsigned gcd2(unsigned a, unsigned b)
{ 
  return (0 == b) ? a : gcd2(b, a%b); 
}

int main()
{ 
  unsigned a = 1, b = 125;
  while (cin >> a >> b)
  {
        cout << gcd1(a, b) << endl;
        cout << gcd2(a, b) << endl;
  }
  return 0;
}
