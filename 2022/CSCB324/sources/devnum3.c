#include <stdio.h>
#define MAX_ADDS 100

/* Сума, която ще разбиваме */
const unsigned n = 15;

/* Брой различни стойности на монетите */
const unsigned gN = 3;

/* Стойности на монетите */
const unsigned given[] = { 2, 3, 5 };

unsigned mp[MAX_ADDS];

void print(unsigned length)
{
    unsigned i;
    for (i = 1; i < length; i++) printf("%u + ", mp[i]);
    printf("%d\n", mp[length]);
    
}
void devNum(unsigned n, unsigned pos) {
    unsigned k, p;
    for (p = gN; p > 0; p--)
    {
        k = given[p - 1];
        if (n > k)
        {
            mp[pos] = k;
            if (mp[pos] <= mp[pos - 1]) devNum(n - k, pos + 1);
        }
        else if (n == k)
        {
            mp[pos] = k;
            if (mp[pos] <= mp[pos - 1]) print(pos);
        }
    }
}

int main(void)
{
    mp[0] = n + 1;
    devNum(n, 1);
    return 0;
}
