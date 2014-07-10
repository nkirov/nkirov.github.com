// knapsack.cpp
#include <iostream>
#include <fstream>
#include <iomanip>
using namespace std;

#define MAXN 30    /* max items*/
#define MAXM 1000  /* max capacity */

char set[MAXM][MAXN];
/* set[i][j]==1 means that for capacity i an optimal solution contains item j */

unsigned int Fn[MAXM]; /* objective function */

/* items */
/*                No.      1   2   3   4   5   6   7  8    */ 
unsigned int m[MAXN] = {0, 30, 15, 50, 10, 20, 40, 5, 65}; /* volume */
unsigned int c[MAXN] = {0,  5,  3,  9,  1,  2,  7, 1, 12}; /* price */

unsigned int M = 70; /* actual capacity */
unsigned int N = 8;  /* number of items */

void calculate()
{ unsigned int maxValue, maxIndex, i, j;
  memset(set, 0, sizeof(set));       /* set[i][j] = 0 */

  for (i=1; i<=M; i++)
  { maxValue = maxIndex = 0;
    for (j=1; j<=N; j++)              /* try the item j */
      if (m[j]<=i && !set[i-m[j]][j])
        if (c[j] + Fn[i-m[j]] > maxValue)
    {  maxValue = c[j] + Fn[i-m[j]];
       maxIndex = j;
    }
    if (maxIndex > 0)                  /* succesful ! */
    {  Fn[i] = maxValue;
       memcpy(set[i], set[i-m[maxIndex]], N);
       set[i][maxIndex] = 1;
    }
    if (Fn[i] < Fn[i-1])
    {  Fn[i] = Fn[i-1];
       memcpy(set[i], set[i-1], N);
    }
  }
}

void write()
{ for (int i=1; i<=N; i++)
     if (set[M][i]) cout << setw(4) << i << " ";
  cout << endl;
  cout << "Max value: " << Fn[M];
}     

void read()
{ cin >> M >> N;
  for (int i=1; i<=N; i++) cin >> m[i];
  for (int i=1; i<=N; i++) cin >> c[i]; 
}     

int main()
{ // read();
  calculate();
  write();
  return 0;
} 

