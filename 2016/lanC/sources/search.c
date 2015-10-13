#include <stdio.h>
#include <stdlib.h>

int linsearch(int x, int v[], int n)
{
    int i;
    for (i=0; i<n; ++i)
        if (v[i] == x) return i;
    return -1;
    
}

/* binsearch: find x in v[0] <= v[1] <= ... <= v[n-1] */

int binsearch(int x, int v[], int n)
{
    int low, high, mid;
    low = 0;
    high = n - 1;
    while (low <= high) {
        mid = (low+high)/2;
//        printf("%d %d %d \n", low, mid, high);
        if (x < v[mid])
            high = mid - 1;
        else if (x > v[mid])
            low = mid + 1;
        else    /* found match */
            return mid;
    }
    return -1; /* no match */
}

void generate(int a[], int na)
{
    int i;
/*
    a[0] = rand()%100;
    for (i = 1; i < na; i++)
        while ((a[i] = rand()%100) < a[i-1]);
*/
    a[0] = rand()%100;
    for (i = 1; i < na; i++)
        a[i] = a[i-1] + rand()%10;
}

void printa(int a[], int na)
{
    int i;
    for (i = 0; i < na; ++i)
        printf("%d ", a[i]);
}

int main()
{
    const int na = 1000000;
    int k = 17;
    int a[na];
    generate(a, na);
    printa(a, na);
    
    printf("k = %d \n", k);
    printf("linear: %d \n", linsearch(k, a, na));
    printf("binary: %d \n", binsearch(k, a, na));
           
    return 0;
}