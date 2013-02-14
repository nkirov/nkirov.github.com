#include<stdio.h>

int bin[200],pos;

int is_pal()
{
 int a=0,b=pos-1;
 while(a<=b)
  {
   if(bin[a]!=bin[b])return 0;
   a++;b--;
  }
 return 1;
}

void binary(long int l)
{
 long int temp=l;
 pos=0;
 do
  {
   if(temp%2)
    {
     bin[pos]=1;
     pos++;
    }
   else
    {
     bin[pos]=0;
     pos++;
    }
   temp=temp/2;
  }while(temp!=0);
}

void main()
{
 long int first, second,count,i;
 scanf("%li",&first);
 while(first!=0)
  {
   scanf("%li",&second);
   count=0;
   for(i=first;i<=second;i++)
    {
     binary(i);
     if(is_pal())count++;
    }
   printf("%li\n",count);
   scanf("%li",&first);
  }
// binary(first);
// for(i=pos-1;i>=0;i--)printf("%d",bin[i]);
}
