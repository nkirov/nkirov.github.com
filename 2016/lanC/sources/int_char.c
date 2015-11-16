#include <stdio.h>

int main()
{
    int k = -10;
    
    char *c = (char*)&k;
    
    printf("%d %d %d %d %d /n", k, (int)*c, (int)c[1], (int)*(c+2), (int)c[3]);
    
    
    return 0;
}