#include <iostream>
using namespace std;
int main()
{
   double price = 4.35;
   int cents = 100 * price;
			// Should be 100 * 4.35 = 435
   cout << cents << endl;
			// Prints 434!
   return 0;
}
