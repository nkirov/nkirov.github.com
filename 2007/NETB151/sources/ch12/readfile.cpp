#include <string>
#include <iostream>
#include <fstream>
using namespace std;

int main()
{  cout << "Enter the file name: ";
   string fname;
   cin >> fname;
   
   ifstream infile;
   infile.open(fname.c_str());
   if (infile.fail())
   {  cout << "ERROR";
      return 1;            
   }
   
   int sum = 0;
   while (!infile.eof())
   {  char ch;
      infile.get(ch);
      if ('0' <= ch && ch <= '9') /* it was a digit */
      {  infile.unget(); /* oops - didn't want to read it */
         int n;
         infile >> n; /* read integer starting with ch */
         sum += n;
      }
      else cout << ch; 
   }
   infile.close();
   cout << "The sum is " << sum << endl;
   return 0;
}
