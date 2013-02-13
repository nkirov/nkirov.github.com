#include <iostream>
using namespace std;

int main()
{  int count = 0;
   char ch;
   while (cin.get(ch)) count++;
   cout << count << " chars.\n";
   return 0;
}
