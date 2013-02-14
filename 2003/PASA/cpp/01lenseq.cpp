/*
Atanas Zhivkov Angov, SWU "N. Rilski", III kurs, f.N 82446
zadacha 4, 25.10.2002
Borland C++ 3.1
*/
#include<stdio.h>

long a,b,chislo=0;
int length=0,maxlength=0;

int redica(long n)
{
 if(n==1)return 1;
 if(n%2)length=1+redica(3*n+1);
 else length=1+redica(n/2);
 return length;
}

void main()
{
 FILE *mrun=fopen("lenseq.inp","r"),*blah=fopen("lenseq.out","w");
 long i,neshto;
 fscanf(mrun,"%li %li",&a,&b);
 for(i=a;i<=b;i++)
  {
   length=redica(i);
   if(length>maxlength)
    {
     maxlength=length;
     chislo=i;
    }
  }
 fprintf(blah,"%li",chislo);
 fclose(blah);
 fclose(mrun);
}
