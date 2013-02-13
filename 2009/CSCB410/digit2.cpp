// digit2.cpp
#include <iostream>
using std::cout;
using std::cin;

void printN(unsigned n)
{ 
  cout << n%10 << ",";
  if (n >= 10) printN(n/10);
  cout << n%10 << ",";
}
int main()
{ 
  unsigned m = 1234;
  while ( cin >> m ) printN(m);
  return 0;
} 
