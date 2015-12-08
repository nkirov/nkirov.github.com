#include <stdio.h>
#include <string.h>
#define MAXL 100

void swap(char *a, char *b)
{
    char temp = *a;
    *a = *b;
    *b = temp;
}

char * reverse(char* s)
{
    int l, b, e;
    l = strlen(s);
    e = l - 2;
    b = 0;
    for (; e >= b; e--, b++)
        swap(s + e, &s[b]);
    return s;
}


int main()
{
    char buf[MAXL];
    while (fgets(buf, MAXL, stdin) != NULL)
        fputs(reverse(buf), stdout);
    return 0;
}