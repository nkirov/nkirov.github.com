#include <stdio.h>

int main()
{
    int k = 10;
    int *pk = &k;
    printf("%lu \n", sizeof(pk));

    int **pkk = &pk;
    int ***pkkk = &pkk;
    printf("%d %d \%d %d \n", k, *pk, **pkk, ***pkkk);
    printf("%p %p %p\n", pk, *pkk, **pkkk);
    printf("%p %p \n", pkk, *pkkk);
    printf("%p \n", pkkk);

    char *arr[100];
    char a[] = "Hello!";
    arr[0] = a;
    printf("%s %c %c \n", a, *arr[0], **arr);
    printf("%c %c %c \n", (*arr)[1], *(*arr + 1), (*arr + 1)[0]);
    printf("%p %p %p \n", arr, *arr, *arr + 1);

    return 0;
}