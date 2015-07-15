#include <iostream>
using namespace std;

int main()
{  const double BOTTLE_VOLUME = 2.0;
   const double CAN_VOLUME = 0.355;
   double bottles;

   cout << "How many" <<  BOTTLE_VOLUME << "-liter bottles do you have? ";
   cin >> bottles;

   double cans;
   cout << "How many cans do you have? ";
   cin >> cans;

   double total = bottles * BOTTLE_VOLUME 
      + cans * CAN_VOLUME;

   cout << "The total volume is " << total << " liter.\n";
   return 0;
}
