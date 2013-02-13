// fibtrace.cpp
#include <iostream>
using namespace std;

long fib(int n)
{ cout << "Entering fib: n = " << n << "\n";
  long f;
  if (n <= 2) f = 1;
  else f = fib(n - 1) + fib(n - 2);
  cout << "Exiting fib: n = " << n
       << " return value = " << f << "\n";
  return f;
}

int main()
{ cout << "Enter n: ";
  int n;
  cin >> n;
  long f = fib(n);
  cout << "fib(" << n << ") = " << f << "\n";
  return 0;
}
