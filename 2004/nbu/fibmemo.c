// fibMemo.c
#include <stdio.h>
#define MAX 256
unsigned n = 10;
unsigned long m[MAX+1];

unsigned long fibMemo(unsigned n)
{ if (n<2) m[n] = 1;
  else if (0==m[n]) m[n] = fibMemo(n-1) + fibMemo(n-2);
  return m[n];
}

int main()
{ memset(m, 0, MAX*sizeof(*m));
  scanf("%u", &n);
  printf("\n%u-тото число на Фибоначи е: %lu", n, fibMemo(n));
   scanf("%u", &n);
  return 0;
}

