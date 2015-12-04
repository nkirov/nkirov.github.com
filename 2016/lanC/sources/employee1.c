#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXST 100

struct employee {
//    char name[50];
    char *name;
    int number;
    float salary;
};

int maxst = 10;

//struct employee tab[MAXST];
struct employee *tab_pt[MAXST];
//struct employee *pt_tab;

float average();
void delete_row(int row);
void insert_row(char *, int, float);

void read_tab();
void write_tab(FILE *);

void write_name_salary();

void sort_tab_name();
void sort_tab_number();

void generate();


int main()
{
    char *a = "Petar";
    generate();
    write_tab(stdout);
    FILE *fout;
    fout = fopen("tab.txt", "w");
    
    write_tab(fout);
    fclose(fout);
    
    sort_tab_number();
    write_tab(stdout);
    
    sort_tab_name();
    write_tab(stdout);
    
    delete_row(96);
    write_tab(stdout);
    
    insert_row(a, 500, 20000);
    write_tab(stdout);
    
    return 0;
}

void read_tab()
{
    
    
}

void generate()
{
    char n[30];
    float sal;
    int num;
    int i, j;
    for (j=0; j < maxst; j++)  {
        for (i=0; i < 20; i++)
            n[i] = 'a' + rand()%26;
        n[20] = '\0';
//        printf("%s \n", n);
        num = 1 + rand()%1000;
        sal = rand()%10000;
        
        tab_pt[j] = (struct employee *) malloc(sizeof(struct employee));
        if (NULL == tab_pt[j]) exit(1);
//        tab_pt[j]->name = n;         // ???
        
        tab_pt[j]->name = (char *)malloc(21*sizeof(char));
        strcpy(tab_pt[j]->name, n);
        tab_pt[j]->number = num;
        tab_pt[j]->salary = sal;
    }
}

void write_tab(FILE *out)
{
    int j;
    for (j=0; j < maxst; j++)  {
         fprintf(out, "%s  %5d %10.2f \n", tab_pt[j]->name, tab_pt[j]->number,
                tab_pt[j]->salary);
     }
    fprintf(out, "\n");
}

/* qsort: sort v[left]...v[right] into increasing order */
void qsort1(struct employee * v[], int left, int right)
{
    int i, last;
    void swap(struct employee * v[], int i, int j);
    
    if (left >= right) /* do nothing if array contains */
        return;        /* fewer than two elements */
    swap(v, left, (left + right)/2); /* move partition elem */
    last = left; /* to v[0] */
    for (i = left + 1; i <= right; i++) /* partition */
        if (v[i]->number < v[left]->number)
            swap(v, ++last, i);
    swap(v, left, last);    /* restore partition elem */
    qsort1(v, left, last-1);
    qsort1(v, last+1, right);
}

/* qsort: sort v[left]...v[right] into increasing order */
void qsort2(struct employee * v[], int left, int right)
{
    int i, last;
    void swap(struct employee * v[], int i, int j);
    
    if (left >= right) /* do nothing if array contains */
        return;        /* fewer than two elements */
    swap(v, left, (left + right)/2); /* move partition elem */
    last = left; /* to v[0] */
    for (i = left + 1; i <= right; i++) /* partition */
        if (strncmp(v[i]->name, v[left]->name, 4) < 0)
            swap(v, ++last, i);
    swap(v, left, last);    /* restore partition elem */
    qsort2(v, left, last-1);
    qsort2(v, last+1, right);
}


/* swap: interchange v[i] and v[j] */
void swap(struct employee * v[], int i, int j)
{
    struct employee * temp;
    temp = v[i];
    v[i] = v[j];
    v[j] = temp;
}

void sort_tab_number()
{
    qsort1(tab_pt, 0, maxst - 1);
    
}

void sort_tab_name()
{
    qsort2(tab_pt, 0, maxst - 1);
    
}

void delete_row(int row)
{
    int i, j;
    for (i = 0; i < maxst; ++i)
        if (tab_pt[i]->number == row) break;
    if (i == maxst)
    {
        printf("NOT FOUND \n");
        return;
    }
    free(tab_pt[i]->name);
    free(tab_pt[i]);
    for (j = i; j < maxst - 1; j++)
        tab_pt[j] = tab_pt[j+1];
    maxst--;
}

void insert_row(char *n, int nu, float sa)
{
    if (maxst >= MAXST) return;
   
    tab_pt[maxst] = malloc(sizeof(struct employee));
    
    tab_pt[maxst]->name = n;
    tab_pt[maxst]->number = nu;
    tab_pt[maxst]->salary = sa;
    maxst++;
}












