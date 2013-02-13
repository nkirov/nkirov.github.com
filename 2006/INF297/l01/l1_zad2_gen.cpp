// n2_gen.cpp
#include<fstream>
#include<cstdlib>
#include<cstring>
using namespace std;
 
int main()
{ int n = 10000;
  ofstream f("n3a.inp");
  f << n << "\n";
  srand(23456);
  for (int i=0; i<=n; i++)
  { int len = 1 + rand()%80;
    int j;
    char s[81];
    for (j=0; j<len; j++) s[j] = 'a' + rand()%26;
    s[j]='\0';
    f << s << "\n";
  }      
  return 0;   
}    
