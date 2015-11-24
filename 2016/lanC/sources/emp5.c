/*
 Да се дефинира структура emp, съхраняваща име на човек и заплата.
 Да се дефинира масив от такива структури, да се чете таблица - име, заплата и да се изведе такава таблица с отбелязана най-висока (!) и най-ниска (?) заплата. Да се изчисли и средната заплата от въведените.
 
 5. вариант: програма emp5.c - името в структурата е в char *name;, таблицата се чете в свързан списък, в дефиницията на структурата се добавя:
 struct emp *next;
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct emp {
    char *name;
    float salary;
    struct emp * next;
};

struct emp *tab;
int num = 0;

void printtab(struct emp *ima, struct emp *nema)
{
    struct emp *pt = tab;
    while (pt != NULL)
    {
        if (ima == pt) printf("!  ");
        if (nema == pt) printf("?  ");
        
        printf("%s %10.2f \n", pt->name, pt->salary);
        
        pt = pt->next;
    }
}

void readtab()
{
    char nam[50];
    struct emp *pt, *ptt = NULL;
    float sal;
    tab = NULL;
    while (EOF != scanf("%s %f", nam, &sal))
    {
        pt = (struct emp *)malloc(sizeof(struct emp));
        if (tab == NULL) tab = pt;
        pt->salary = sal;
        pt->next = NULL;
        
        pt->name = (char *)malloc(strlen(nam));
        strcpy(pt->name, nam);
        if (ptt != NULL) ptt->next = pt;
        ptt = pt;
        num++;
    }
}

int main()
{
    float smin = 100000, smax = 0, smid = 0;
    struct emp *ptmin, *ptmax;
    
    struct emp *pt;
    
    readtab();
    
    pt = tab;
    while (pt != NULL)
    {
        if (smin > pt->salary)
        {
            smin = pt->salary;
            ptmin = pt;
        }
        if (smax < pt->salary)
        {
            smax = pt->salary;
            ptmax = pt;
        }
        smid += pt->salary;
        pt = pt->next;
    }
    
    printtab(ptmax, ptmin);
    printf("Average salary: %10.2f \n", smid/num);
    
    return 0;
}