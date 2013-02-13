// sum_str.cpp
#include <iostream>
using std::cout;
#include <cstring>
using std::strlen;
#define M 100

char *summa(char *a, char *b)
{
 char *c = new char[M];
 int lena = strlen(a);
 int lenb = strlen(b);
 int lenc = lena>lenb?lena:lenb+1;
 int k;
 for (k=0; k<lenc; k++) c[k]='0';
 c[lenc] = '\0';
 int i, j, carry=0, d;
 for (i=lena-1, j=lenb-1, k=lenc-1; k>=0; i--, j--, k--)
 {
  int aa = (i>=0)?int(a[i]-'0'):0;
  int bb = (j>=0)?int(b[j]-'0'):0;
  d = aa + bb + carry;
  carry = (d>9)?1:0;
  c[k] = '0'+ d%10;
 }
 if (c[0]=='0')
   for (k=0; k<lenc; k++) c[k]=c[k+1];
 return c;
}

int main()
{
 char a[M] = "11111111111111111111";
 char b[M] = "29999191919191";
 cout << a << " + " << b << " = " << summa(a,b) << "\n";
 return 0;
}
