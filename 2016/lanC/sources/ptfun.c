#include <stdio.h>

int k(void *v)
{
    int i = *(int *)v;
    printf("AAA %d \n", i);
    return 1;
}


int l(void *v)
{
    double x = *(double *)v;
    printf("BBB %2.1f \n", x);
    return 2;
}

int m(char *c)
{
    printf("CCC %c \n", *c);
    return 3;
}

void test(void* id, int (*pk)(void *))
{
    printf("%d \n", pk(id));
}


int main()
{
    int a = 10;
    int *pa = &a;
    test((void *)pa, k);
    
    double b = 2.5;
    double *pb = &b;
    test((void*)pb, l);
    
    char c = 'C';
    char *pc = &c;
//    test((void*)pc, m);
    test((void*)pc, (int (*)(void*))m);
    
    return 0;
}