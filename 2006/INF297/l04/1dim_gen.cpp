#include <iostream>
#include <cstdlib>
#define M 100
using namespace std;

int main()
{ int k=0; 
  for (int i=0; i<M; i++)
    cout << ((rand()%2==0)?"p":"n") << " " 
         << (k += (1 + rand()%10)) << " A" << k << endl;
  return 0;   
}    
