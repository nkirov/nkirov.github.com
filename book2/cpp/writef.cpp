// writef.cpp
#include <iostream>
#include <fstream>             /* включване на заглавен файл */
#include <string>
using namespace std;
int main()
{  ofstream out_data; /* дефиниране на файлова променлива за писане */
   out_data.open("writef.txt");  /* отваряне на файла writef.txt */

   string s = "Hello";
   out_data << s << endl; /* писане на низ */
   int n = 5;
   double x = 5.5;
   out_data << n << " " << x << " "; /* писане на числови данни */
   char ch = 'T';
   out_data.put(ch); /* писане на символ */

   out_data.close();             /* затваряне на файла */
   return 0;
}

