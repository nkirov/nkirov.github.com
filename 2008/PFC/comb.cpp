// comb.c - комбинации без повторения
#include <iostream>
using namespace std;
#define MAXN 20

const int n = 5;
const int k = 2;
int mp[MAXN];

void print()
{
 for (int j = 0; j < k; j++) 
     cout << mp[j] << " ";
 cout << endl;
}
void comb(int i, int after)
{ 
  if (i > k) return;
  for (int j = after + 1; j <= n; j++)
  { 
    mp[i-1] = j;
    if (i == k) print();
    comb(i + 1, j);
  }
}
int main()
{ 
    comb(1,0);  
    return 0; 
} 
