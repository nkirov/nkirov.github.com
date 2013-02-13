// fibtime.cpp
#include <iostream>
using namespace std;

#include "ccc_time.cpp"

long fib(int n)
{ if (n <= 2) return 1;
  else return fib(n - 1) + fib(n - 2);
}

int main()
{ cout << "Enter n: ";
  int n;
  cin >> n;
  Time before;
  long f = fib(n);
  Time after;
  cout << "fib(" << n << ") = " << f << "\n";
  cout << "Elapsed time = " << after.seconds_from(before) << " seconds\n";
  return 0;
}
