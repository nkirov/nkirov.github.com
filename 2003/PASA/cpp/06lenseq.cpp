/*********************************
 *  Training contest 2002/2003   *
 *********************************
 * LenSeq (4) ver. 1.0.0b ;)     *
 * Name: Borislav Parvanov       *
 * Publishing Date: 25.10.2002   *
 * University: BFU               *
 * Course: IV                    *
 * FN: 99040068                  *
 * Compiler: Borland C++ 3.1     *
 * E-mail: zerosoft@unacs.bg     *
 *********************************/
#include <fstream.h>

typedef unsigned long ULONG;

int getLength(ULONG n)
{
 int len=1;
 while (n != 1)
 {
  if (n%2)
  n = 3*n+1; else n /= 2;
  len++;
 }
 return len;
}

void main()
{
 ifstream in("lenseq.inp");
 ofstream out("lenseq.out");

 ULONG a, b, seqnum;
 int maxlen;

 in >> a >> b;

 maxlen = getLength(a);
 seqnum = a;
 for (ULONG i=a+1; i<=b; i++)
 {
  int len = getLength(i);
  if (len > maxlen)
  {
   maxlen = len;
   seqnum = i;
  }
 }

 out << seqnum;

 in.close();
 out.close();
}
