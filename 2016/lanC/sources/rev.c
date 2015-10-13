#include <stdio.h>

void rev(char s[])
{
    int i = 0, j = 0;
    char c;
    while (s[j]) j++;
//    printf("%d \n", j);
    j--;
    while (i < j) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
        i++, j--;
    }

}

int main()
{
    char s[] = "abcd";
    rev(s);
    printf("%s \n", s);
    return 0;
}