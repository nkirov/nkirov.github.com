#include <string>
#include <iostream>
#include <fstream>
using namespace std;

int main()
{  cout << "Enter the input file name: ";
   string finame;
   cin >> finame;
   
   ifstream infile;
   infile.open(finame.c_str());
   if (infile.fail())
   {  cout << "Error opening " << finame << endl;
      return 1;            
   }
   
   cout << "Enter the output file name: ";
   string foname;
   cin >> foname;
   
   ofstream outfile;
   outfile.open(foname.c_str());
   if (outfile.fail())
   {  cout << "Error opening " << foname << endl;;
      return 1;            
   }
   
   while (!infile.eof())
   {  char ch;
      infile.get(ch);
      if ('0' <= ch && ch <= '9') /* it was a digit */
      {  infile.unget(); /* oops - didn't want to read it */
         int n;
         infile >> n; /* read integer starting with ch */
         outfile << n << endl;
      }
      else cout << ch; 
   }
   infile.close();
   outfile.close();
   return 0;
}
