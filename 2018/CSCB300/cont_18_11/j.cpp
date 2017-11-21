#include<iostream>
using namespace std;
int main()
{
  long long a[65][65], s, zn;
  int n,m,k,br;
  a[0][0]=1;
  for(int i=1; i<=60; i++)
    a[i][0]=1, a[i][i]=1;
  for(int i=2; i<=60; i++)
    for(int j=1; j<i; j++)
      a[i][j]=a[i-1][j-1]+a[i-1][j];
  cin >> br;
  for(int p=1;p<=br; p++)
  {
      cin >> n >> m >> k;
      s=0; zn=1;
      for(int i=n; i>=0; i--)
      {
          if(k-i>=0 && k-i<=m) s+=(zn*a[n][i]*a[m][k-i]);
          zn = -zn;
      }
      cout << s << endl;
  }
  return 0;
}

