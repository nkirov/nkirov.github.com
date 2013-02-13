#include <iostream>
#include <fstream>
using namespace std;

int main()
{  fstream fs("sal.txt");
   fs.seekg(0, ios::end);
   long file_length = fs.tellg();
   cout << file_length << endl;
   
   fs.seekp(14L, ios::beg);
   fs << 37000.55;
   fs.close();  
   return 0;
}
