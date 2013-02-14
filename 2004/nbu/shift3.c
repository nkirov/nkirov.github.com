// shift3.c
#include <stdio.h>
#define N 11

int m[N];
int n = N;

void reverse(unsigned a, unsigned b)
{ unsigned i, j, k, c;
  int tmp;
  for (c=(b-a)/2, k=a, j=b, i=0; i<c; i++, j--, k++)
  { tmp = m[k];
    m[k] = m[j];
    m[j] = tmp;
  }
}
 
void shift3(unsigned k)
{ reverse(0, k-1);
  reverse(k, n-1);
  reverse(0, n-1);
}

int main()
{
 int i; 
 for (i=0; i<N; i++) m[i]=i;
 shift3(3);
 for (i=0; i<N; i++) printf("%d ", m[i]);
 printf("\n");
 return 0;
}
