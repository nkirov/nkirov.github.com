// argum.cpp
#include <iostream>
#include <string>
using namespace std;

int main(int argc, char * argv[]) 
{ cout << argc << endl;                  /* ���� �� ����������� */ 
  for (int i=0; i<argc; i++) 
  { string s = static_cast<string>(argv[i]);
    cout << s << " ";
  }  
  cout << endl;
  return 0; 
} 

