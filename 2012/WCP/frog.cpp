#include<iostream>
using namespace std;

const int MAXN = 15;

struct Point
{
  int x, y;
};

int n, used[MAXN], b[MAXN];
Point a[MAXN];
int d[MAXN][MAXN];
int minpath;

void current_minpath()
{
  int s = 0;
  for (int i = 0; i < n; i++)
    s += d[b[i]][b[i+1]];
  if (minpath > s) minpath = s;
}

void variation(int i)
{
  if (i == n + 1)
  {
    current_minpath();
    return;
  }
  for (int j = 1; j <= 2 * n ; j++)
    if (used[j] == 0)
    {
      b[i] = j;
      used[j] = 1;
      variation(i + 1);
      used[j] = 0;
    }
}

int max(int x, int y)
{
  if (x > y) return x;
  return y;
}

void run()
{
  memset(used,0,sizeof(used));
  memset(b,0,sizeof(b));
  memset(d,0,sizeof(d));
  minpath = 20000;
  cin >> n;
  a[0].x = 0;
  a[0].y = 0;
  for (int i = 1; i <= 2*n; i++)
    cin >> a[i].x >> a[i].y;
  for (int i = 0; i < 2*n; i++)
    for (int j = i+1; j <= 2*n ; j++)
    {
      d[i][j] = max(abs(a[i].x - a[j].x), abs(a[i].y - a[j].y));
      d[j][i] = d[i][j];
    }
  b[0] = 0;
  variation(1);
  cout << minpath << endl;
}

int main()
{
  int nt; cin >> nt;
  for(int i=1;i<=nt;i++) run();   
     
}





