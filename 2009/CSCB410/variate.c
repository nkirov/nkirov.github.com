// variate.c - вариации с повторения
#include <stdio.h>
#define MAXN 100

const unsigned n = 3;
const unsigned k = 2;
unsigned mp[MAXN];

void print(void)
{ unsigned j;
  for (j=0; j<k; j++) printf("%u ", mp[j]+1);
  printf("\n");
}
void variate(unsigned i)
{ unsigned j;
  if (i>=k) { print(); return; }
  for (j=0; j<n; j++)
  { mp[i]=j;
    variate(i+1);
  }
}
int main()
{ variate(0); return 0; } 
