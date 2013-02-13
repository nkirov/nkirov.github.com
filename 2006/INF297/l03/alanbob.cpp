
#include <iostream>
using namespace std;

#define MAX 100
#define MAXVALUE 200

unsigned char can[MAX * MAXVALUE];
const unsigned m[MAX] = {3,2,3,2,2,77,89,23,90,11};
const unsigned n = 10;

void solve()
{ unsigned long p, i, j;
  for (p = i = 0; i < n; p += m[i++]);
  for (i = 0; i <= p; i++) can[i] = 0;
  can[0] = 1;
  
  for (i = 0; i < n; i++)
     for (j = p; j + 1 > 0; j--)
        if (can[j]) can[j + m[i]] = 1; 
  
  for (i = p/2; i > 1; i--)  
     if (can[i]) 
  { cout << i << " " << p-i << endl;
    return;
  }    
}

int main()
{ solve();
  return 0;  
}            
