// variate.cpp
#include <iostream>
using namespace std;
#define MAXN 100

int n = 3;
int k = 2;
int mp[MAXN];

void print()
{ 
     for (int j = 0; j < k; j++) cout << mp[j] + 1 << " ";
     cout << endl;
}
void variate(int i)
{ 
     if (i >= k) 
     { 
           print(); 
           return; 
     }
     for (int j = 0; j < n; j++)
     { 
         mp[i] = j;
         variate(i + 1);
     }
}
int main()
{ 
  while ( cin >> n >> k ) variate(0); 
  return 0; 
} 
