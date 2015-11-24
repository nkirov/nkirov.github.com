/*
 Да се дефинира структура emp, съхраняваща име на човек и заплата.
 Да се дефинира масив от такива структури, да се чете таблица - име, заплата и да се изведе такава таблица с отбелязана най-висока (!) и най-ниска (?) заплата. Да се изчисли и средната заплата от въведените.
 
 2. вариант: програма emp2.c - името в структурата е в char *name;, таблицата се чете в масив от структури:
 struct emp tab[100];
 */


#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct emp {
    char *name;
    float salary;
};

struct emp tab[10];
int num = 0;

void printtab(int ima, int nema)
{
    int i = 0;
    for (; i < num; ++i)
    {
        if (ima == i) printf("!  ");
        if (nema == i) printf("?  ");
        
        printf("%s %10.2f \n", tab[i].name, tab[i].salary);
        
    }
}

void readtab()
{
    char nam[50];
    while (EOF != scanf("%s %f", nam, &tab[num].salary))
    {
        tab[num].name = (char *)malloc(strlen(nam));
        strcpy(tab[num].name, nam);
        num++;
    }
}

int main()
{
    
    float smin = 100000, smax = 0, smid = 0;
    int i, imin, imax;
    
    readtab();
    
    for (i = 0; i < num; ++i)
    {
        if (smin > tab[i].salary)
        {
            smin = tab[i].salary;
            imin = i;
        }
        if (smax < tab[i].salary)
        {
            smax = tab[i].salary;
            imax = i;
        }
        smid += tab[i].salary;
    }
    
    printtab(imax, imin);
    printf("Average salary: %10.2f \n", smid/num);
    
    return 0;
}