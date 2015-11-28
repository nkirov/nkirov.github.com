#include <stdio.h>
#include <string.h>
#define MAX 100

int main()
{
    char a[MAX];
    int len;
    while (len = getline1(a, MAX))
        printf("%d \n", len);
    return 0;
}

/* getline: read a line, return length */
int getline1(char *line, int max)
{
    if (fgets(line, max, stdin) == NULL)
        return 0;
    else
        return strlen(line);
}
