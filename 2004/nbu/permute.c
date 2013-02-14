// permute.c - пермутации без повторения
#include <stdio.h>
#define MAXN 100

const unsigned n = 3;

char used[MAXN];
unsigned char mp[MAXN];

void print(void)
{ unsigned j;
  for (j=0; j<n; j++) printf("%u ", mp[j]+1);
  printf("\n");
}

void permute(unsigned i)
{ unsigned j;
  if (i>=n) { print(); return; }
  for (j=0; j<n; j++)
  { if (!used[j])
    { used[j]=1; mp[i]=j;
      permute(i+1);
      used[j]=0;
    }
  }
}
int main()
{ unsigned j;
  for (j=0; j<n; j++) used[j]=0;
  permute(0);
  return 0;
}

