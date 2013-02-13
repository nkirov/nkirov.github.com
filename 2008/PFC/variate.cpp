// variate.c - вариации с повторения
#include <iostream>
using namespace std;
#define MAXN 100

const int n = 3;
const int k = 2;
int mp[MAXN];

void print()
{ 
     for (int j = 0; j < k; j++) cout << mp[j]+1 << " ";
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
  variate(0); 
  return 0; 
} 
