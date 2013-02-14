// comb.c - комбинации без повторения
#include <stdio.h>
#define MAXN 20

const unsigned n = 5;
const unsigned k = 3;

unsigned mp[MAXN];

void print()
{ unsigned j;
  for (j=0; j<k; j++) printf("%u ", mp[j]);
  printf("\n");
}

void comb(unsigned i, unsigned after)
{ unsigned j;
  if (i>k) return;
  for (j=after+1; j<=n; j++)
  { mp[i-1]=j;
    if (i==k) print();
    comb(i+1,j);
  }
}

int main()
{ comb(1,0);
  return 0;
}

