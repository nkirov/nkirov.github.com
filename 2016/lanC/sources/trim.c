#include <stdio.h>

#include <string.h>

/* trim: remove trailing blanks, tabs, newlines */
int trim(char s[])
{
        int n;
        for (n = strlen(s)-1; n >= 0; n--)
            if (s[n] != ' ' && s[n] != '\t' && s[n] != '\n')
                break;
        s[n+1] = '\0';
        return n + 1;
}

int main()
{
    char a[] = "540  opopopop        \n \t    ";
    printf("%s %d %s \n", a, trim(a), a);
    return 0;
}