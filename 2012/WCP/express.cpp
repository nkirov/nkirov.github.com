#include<iostream>
using namespace std;

string s;
struct r {long long int m; long long n;};
r v[101][101];
bool t[101][101];

r calc(int i1, int i2)
{ 
  if(t[i1][i2]) return v[i1][i2];
  if(i1==i2)
   { char c[2]; c[0]=s[i1]; c[1]=0; 
     v[i1][i2].m=atoi(c);
     v[i1][i2].n=atoi(c);
     t[i1][i2]=true;
     return v[i1][i2];
   }
  long long int m=INT_MAX; m=m*m;
  long long int n=INT_MAX; n=(-n+2)*n;
  for(int i=i1;i<=i2;i++)
   if((s[i]=='+')||(s[i]=='-')||(s[i]=='*'))
     {r a = calc(i1,i-1);
      r b = calc(i+1,i2);
      long long int c,d;
      switch (s[i])
      { case '+' : c=a.m+b.m; d=a.n+b.n; break;
        case '-' : c=a.m-b.n; d=a.n-b.m; break;
        case '*' : c=a.m*b.m; d=a.n*b.n; break;
      }
      if(m>c)m=c;
      if(n<d)n=d;
     }
  v[i1][i2].m=m; v[i1][i2].n=n;
  t[i1][i2]=true; return v[i1][i2];
} 
int main()
{ 
  int nt; cin >> nt;
  for(int i=1;i<=nt;i++)
  {  
   memset(t,0,sizeof(t));
   cin >> s;
   r v = calc(0, s.size()-1);
   cout << v.m << endl;
  }
}
