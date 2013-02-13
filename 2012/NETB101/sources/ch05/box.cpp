#include <iostream>
#include <string>

using namespace std;

/**
   Prints a string in a box.
   @param str the string to print
*/
void box_string(string str)
{
   int n = str.length();
   for (int i = 0; i < n + 2; i++) { cout << "-"; }
   cout << endl;
   cout << "!" << str << "!" << endl;
   for (int i = 0; i < n + 2; i++) { cout << "-"; }
   cout << endl;
}

int main()
{
   box_string("Hello");
   box_string("World");

   return 0;
}
