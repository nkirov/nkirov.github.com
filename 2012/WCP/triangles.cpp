#include<cstdio>
#include<vector>
#include<stack>
using namespace std;

struct point {int x; int y;};
struct tri 
 {point a; point b; point c;
  vector<int> next, prev; 
  int nv; 
 };

int cp(point p0, point p1, point p2)
{
  int x1=p1.x-p0.x;
  int y1=p1.y-p0.y;
  int x2=p2.x-p0.x;
  int y2=p2.y-p0.y;
  int v=x1*y2-y1*x2;
  if(v>0) return 1;
  else if(v<0) return -1;
  else return 0;   
}

bool inside(point p, tri d)
{

  int e0=cp(d.a, d.b, d.c);
  int e1=cp(d.a, d.b, p);
  int e2=cp(d.b, d.c, p);
  int e3=cp(d.c, d.a, p);
     
  int e=cp(d.a, d.b, d.c);
  if(cp(d.a, d.b, p) != e) return false;
  if(cp(d.b, d.c, p) != e) return false;
  if(cp(d.c, d.a, p) != e) return false;
  return true;
}


const int N=10001;
tri d[N];
int t[N];
int ti[N];
int p[N];
int n;

void create_graph()
{

 for(int i=1;i<=n;i++)
 for(int j=1;j<=n;j++)
 if(i!=j)
 {  

   if(inside(d[j].a, d[i]))
   if(inside(d[j].b, d[i]))
   if(inside(d[j].c, d[i]))
   {

    d[i].next.push_back(j);  
    d[j].prev.push_back(i);
   }
 }
 for(int i=1;i<=n;i++) d[i].nv=d[i].next.size();    
}

void topsort()
{
 stack<int> s;
 for(int i=1;i<=n;i++)
  if(d[i].nv==0) {s.push(i); d[i].nv=-1;}
 int it=-1;
 while(!s.empty())
 {
  it++; t[it]=s.top();
  ti[s.top()]=it;
  int s0=s.top();
  s.pop();
  for(int j=0; j<d[s0].prev.size(); j++) 
   d[d[s0].prev[j]].nv--;
  for(int i=1;i<=n;i++) 
   if(d[i].nv==0) {s.push(i); d[i].nv=-1;} 
 }   
}

void dp()
{
 for(int i=0;i<n;i++) 
 {
  p[i]=0;
  int vmax=0;
   for(int j=0;j<d[t[i]].next.size();j++)
    {
      int v=p[ti[d[t[i]].next[j]]];  
      vmax=max(vmax,v);     
    }
  if(!d[t[i]].next.empty()) p[i]=vmax+1;
 } 
 int res=0;
 for(int i=0;i<n;i++) res=max(res,p[i]);
 printf("%d\n",res+1);    
}

void run()
{
 scanf("%d",&n);
 for(int i=1;i<=n;i++) 
  {scanf("%d%d%d%d%d%d", 
   &d[i].a.x, &d[i].a.y, &d[i].b.x, &d[i].b.y, &d[i].c.x, &d[i].c.y);
   d[i].next.clear();
   d[i].prev.clear();
   d[i].nv=0; 
  }  
   
  memset(t,N,0);
  memset(ti,N,0);
  memset(p,N,0);

 create_graph();
 topsort();
 dp();
}

int main()
{
 int nt; scanf("%d",&nt);
 for(int i=1;i<=nt;i++) run();
    
}
