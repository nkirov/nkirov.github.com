/*
#define NDEBUG
*/
#include <iostream>
#include <cmath>
#include <cassert>

using namespace std;

double future_value(double initial_value, double p, int n)
{  assert(p > 0);
   assert(n > 0);
   return initial_value * pow(1 + p / 100, n);
}

int main()
{  
   cout << "Please enter the interest rate in percent: ";
   double rate;
   cin >> rate;

   double balance = future_value(-1000, rate, -10);
   cout << "After 10 years, the balance is " 
      << balance << "\n";

   return 0;
}


