#include <iostream>
using namespace std;

int main()
{  double bottles;

   cout << "How many 2-liter bottles do you have? ";
   cin >> bottles;

   double cans;
   cout << "How many cans do you have? ";
   cin >> cans;

   double total = bottles * 2.0 + cans * 0.355;
   cout << "The total volume is " << total << " liter.\n";
   return 0;
}
