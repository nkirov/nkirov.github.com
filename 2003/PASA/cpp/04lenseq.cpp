// Vasil Martinov 20040004 BFU
// Gergana Georgieva 21040028
// Zadacha 4a
// Borland 3.01
#include <fstream.h>
unsigned long seq(unsigned long a)
{
  unsigned long ret = 1;
  while( a != 1)
  {
     if ( a%2 == 0) a = a / 2;
     else a = 3*a+1;
     ret++;
  }
  return ret;
}

unsigned long get_big(unsigned long a,unsigned long b)
{ unsigned long num=a,len = seq(a);
  unsigned long i=0;
   for(i=a+1; i<=b; i++)
   {
      unsigned long l = seq(i);
      if( l > len)
      {  len = l;
	 num = i;
      }
   }
  return num;
}
void input()
{
    fstream in("lenseq.inp",ios::in);
    fstream out("lenseq.out",ios::out);
    unsigned long a,b;
    in >> a >> b;
    out << get_big(a,b);
    in.close();
    out.close();
}
void main()
{
 input();
}