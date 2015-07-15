#include <iostream>
using namespace std;

int main()
{  cout << "Please enter a number: ";
   int n;
   cin >> n;
   int product1 = 1;
   long product2 = 1;
   long long product3 = 1;
   for (int i = 1; i <= n; i++) 
   {  product1 = product1 * i;
      product2 = product2 * i;
      product3 = product3 * i;
   }
   cout << n << "! = " << product1 << " " 
             << product2 << " " << product3 << "\n";
             
   cout << sizeof(int) << " " << sizeof(long) << " "
        << sizeof(long long) << "\n";          
   return 0;
}
