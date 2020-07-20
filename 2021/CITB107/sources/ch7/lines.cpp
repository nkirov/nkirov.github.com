#include <iostream>
#include <string>
using namespace std;

int main()
{  int count = 0;
   string lines;
   while (getline(cin, lines)) count++;
   cout << count << " lines.\n";
   return 0;
}
