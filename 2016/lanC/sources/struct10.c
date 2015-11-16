#include <stdio.h>
#include <math.h>

struct ptpoint {
    int *x;
    int *y;
};

const int aa = 10;

struct ptpoint pt, *ptpt;

int main()
{
    pt.x = &aa;
    pt.y = &aa;
    printf("%d %d \n", *(pt.x), *(pt.y));
    
    ptpt = &pt;
    printf("%d %d \n", *(ptpt->x), *(ptpt->y));
    return 0;
}


