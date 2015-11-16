#include <stdio.h>

int main(int argc, char *argv[])
{
    int key = 3;
    if (argc == 2) key = atoi(argv[1]);
    int c;
    c = getchar();
    while (c != EOF) {
        if (c >= 'a' && c <= 'z')
            c = ((c - 'a') + key + 26)%26 + 'a';
            
        else if (c >= 'A' && c <= 'Z')
            c = ((c - 'A') + key + 26)%26 + 'A';
        putchar(c);
        c = getchar();
    }
}