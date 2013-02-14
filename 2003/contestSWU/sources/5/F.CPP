#include<iostream.h>
#include<stdio.h>
__int64 st2[65],br;
__int64 mas[65];
__int64 ma[200];
int n,m,ind;

void scan()
{
  int i;
  scanf("%d",&n);
  for(i=1;i<=n;i++)
    scanf("%I64d",mas[i]);
}

void stepen()
{
  int i;
  st2[1]=1;
  for(i=2;i<=n;i++)
    st2[i]=st2[i-1]*2;
}

__int64 hanoi(int k,int p1,int p2)
{
  if(k==0) return 0;
  if(mas[k]==p1) return hanoi(k-1,p1,6-p1-p2);
  if(mas[k]==p2) return (st2[k]+hanoi(k-1,6-p1-p2,p2));
  ind=0;
  return 0;
}

void main()
{
  int i;
  cin>>m;
   for(i=1;i<=m;i++)
  {
    scan();
    stepen();
    ind=1;
    br=hanoi(n,1,2);
    if(ind)
      ma[i++]=br;
     else
       cout<<-1<<endl;
  }
  for(int j=0;j<i-1;j++)
  {
    printf("%I64d",ma[j]);
	cout<<endl;
  }
}
