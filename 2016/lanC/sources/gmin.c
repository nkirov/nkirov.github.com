#include <stdio.h>

void* gmin(void *a, void *b,
            int (*comp)(void*, void*))
{
    return comp(a, b) ? a : b;
}

int cint(int *a, int *b)
{
    return *a < *b;
}

int cdouble(double *a, double *b)
{
    return *a < *b;
}

int cpair(int *a, int *b)
{
    return a[1] < b[1];
}

int main()
{
    int a = 2, b = 3;
    double x = 1.5, y = 2.5;
    int m[2] = { 1, 2 }, n[2] = { 3, 1 };
    
    printf("%d \n", *(int*)gmin(&a, &b, cint));
    
    printf("%3.1f \n", *(double*)gmin(&x, &y, cdouble));
    
    int * pair = (int*)gmin(m, n, cpair);
    printf("%d %d \n", pair[0], pair[1]);
    
    return 0;
}
