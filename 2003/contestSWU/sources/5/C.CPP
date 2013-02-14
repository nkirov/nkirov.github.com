#include<iostream.h>
#include<stdio.h>
__int64 a,b,br=0;
__int64 mas[100];
__int64 ma[500];

int dvuichno(__int64 n)
{
  int i=0;
  while(n!=0)
  {
    mas[i++]=n%2;
    n=n/2;
  }
  return i;
}

int palindrom(__int64 n)
{
  __int64 i,j=n-1;
  for(i=0;i<n/2;i++)
  {  if(mas[i]!=mas[j--]) return 0;}
  return 1;
}


void main()
{
    __int64 i;
    __int64 j=0;
  do
  {
    br=0;
    scanf("%I64d",&a);
    if(a) scanf("%I64d",&b);
    {
    for(i=a;i<=b;i++)
      if(palindrom(dvuichno(i)))
	br++;
    ma[j++]=br;
     }

  }while(a);
  i=0;
  while(i<=(j-2))
  {
	  printf("%I64d",ma[i++]);
      cout<<endl;
  }
}