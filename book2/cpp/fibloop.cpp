// fibloop.cpp
#include <iostream>
using namespace std;

#include "ccc_time.cpp"

long fib(int n)
{ if (n <= 2) return 1;
  long fold = 1;
  long fold2 = 1;
  int i;
  long fnew;
  for (i = 3; i <= n; i++)
  { fnew = fold + fold2;
     fold2 = fold;
     fold = fnew;
  }
  return fnew;
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
