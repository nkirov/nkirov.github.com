// Shumen, 10.05.2003 - Bunny - A
#include <iostream.h>
#define N 40

int a[N][N];
int m, n;
int num=0;

int f[N][N];

void calc(int i, int j)
{
 if (!a[i][j]) return;
 if (i-1>=0) f[i][j] = f[i-1][j];
 if (j-1>=0) f[i][j] += f[i][j-1];
}

void dinam()
{
 int i, j;
 f[0][0]=1;
 for (i=0; i<m; i++)
    for (j=0; j<=i; j++) calc(i-j,j);
 for (j=1; j<n; j++)
    for (i=m-1; i>=0; i--) calc(i,j+m-i-1);
 num = f[m-1][n-1];
}

void backtrack(int i, int j)
{
 if (i==n-1 && j==m-1) { num++; return; }
 int i1 = i+1;
 if (i1<n && a[i1][j]==1) backtrack(i1, j);
 int j1 = j+1;
 if (j1<m && a[i][j1]==1) backtrack(i, j1);
 return;
}

void main()
{
 cin >> m >> n;
 int i,j;
 for (i=0; i<n; i++) for (j=0; j<m; j++)
 { cin >> a[i][j]; f[i][j]=0; }
 if (!a[0][0] || !a[n-1][m-1])
 {  cout << "0\n";  return; }
 dinam();
// backtrack(0,0);
 cout << num << "\n";
}
