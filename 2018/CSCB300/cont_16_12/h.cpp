#include<cstring>
#include<cstdio>

const int M=1001;
const int N=1001;
int a[M+1][N+1];
char x[M], y[N];
int m,n;

int max(int a,int b)
{return a>b?a:b;}

int main()
{
 scanf("%s",x);
 scanf("%s",y);
 m=strlen(x);
 n=strlen(y);
    
 for(int i=0;i<=m;i++) a[i][0]=0;
 for(int j=0;j<=n;j++) a[0][j]=0; 
 
 for(int i=1;i<=m;i++)
 for(int j=1;j<=n;j++)
 if (x[i-1]==y[j-1])
  {a[i][j]=a[i-1][j-1]+1;}
 else
  {a[i][j]=max(a[i-1][j],a[i][j-1]);}

 printf("%d\n", m+n-2*a[m][n]);
 return 0;
}
