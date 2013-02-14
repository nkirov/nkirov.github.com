#include <iostream.h>

long p1,p2,bits,m,gr,i,num1,num2,st,br,num;

void main()
 {
  while (1)
   {
    cin>>p1;
    if (p1==0) break;
    cin>>p2;
    bits=0;
    m=p2;
    while (m)
     {
      m/=2;
      bits++;
     }
    gr=1<<(bits/2+bits%2+1);
    br=0;
    for (i=0;i<gr;i++)
     {
      num1=i;
      num2=0;
      st=1;
      while (num1)
       {
	num2=num2*2+num1%2;
	num1/=2;
	st*=2;
       }
      num=i*st+num2;
      if (num<=p2 && num>=p1) br++;
      num=i*st*2+num2;
      if (num<=p2 && num>=p1) br++;
      num=(i*2+1)*st+num2;
      if (num<=p2 && num>=p1) br++;
     }
    cout<<br<<endl;
   }
 }