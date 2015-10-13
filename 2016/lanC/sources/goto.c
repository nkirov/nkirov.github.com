#include <stdio.h>

void goto22(int a[], int an, int b[], int bn)
{
    int i, j;
    for (i = 0; i < an; i++)
        for (j = 0; j < bn; j++)
            if (a[i] == b[j])
                goto found;
    /* didn't find any common element */
    printf("Not found \n");
    return;
found:
    /* got one: a[i] == b[j] */
    printf("Found %d\n", a[i]);
}

void goto24(int a[], int an, int b[], int bn)
{
    int i, j;
    for (i = 0; i < an; i++)  {
        for (j = 0; j < bn; j++) {
            if (a[i] == b[j])
                break;
        }
        if (j < bn && a[i] == b[j])
             break;
    }
    if (i < an && j < bn && a[i] == b[j])
        printf("Found %d\n", a[i]);
    else
    /* didn't find any common element */
    printf("Not found \n");
}


void goto23(int a[], int an, int b[], int bn)
{
    int i, j;
    
    int found = 0;
    for (i = 0; i < an && !found; i++)
        for (j = 0; j < bn && !found; j++)
            if (a[i] == b[j])
                found = 1;
    if (found)    /* got one: a[i-1] == b[j-1] */
        printf("Found %d\n", a[i-1]);
    else        /* didn't find any common element */
        printf("Not found \n");
}

int main()
{
    const int an = 3, bn = 4;
    int a[] = { 1, 2, 3 };
    int b[] = { 0, 3, 6, 2 };
    goto22(a, an, b, bn);
    goto24(a, an, b, bn);
    return 0;
}