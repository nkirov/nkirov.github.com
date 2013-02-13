#include <stdio.h>
#define MAX 250
#define SQR(X) ((X)*(X))

unsigned n = 10;
unsigned long m[MAX + 1];
unsigned long fMemo(unsigned n)
{ if (n < 2) m[n] = 1;
  else if (0 == m[n])
  if (1 == n%2) m[n] = fMemo(n - 1) + fMemo(n - 2);
  else m[n] = SQR(fMemo(n/2) + fMemo(n/2 - 1));
  return m[n]; 
}
int main()
{ memset(m, 0, MAX*sizeof(*m));
  scanf("%u", &n);
  printf("\n%u-???? ????? ?? ???????? ?: %lu", n, fibMemo(n));
  return 0; 
}