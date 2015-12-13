#include <stdio.h>
#include <string.h>

int postfix(char * s, char * t)
{
    int i = strlen(s) - 1, j = strlen(t) - 1;
    if ( i < j ) return 0;
    for (; j >= 0; j--, i--)
        if (s[i] != t[j]) return 0;
    return 1;
}

int main()
{
    char a[] = "abc";
    char b[] = "";

    printf("%d \n", postfix(a, b));
    return 0;
}