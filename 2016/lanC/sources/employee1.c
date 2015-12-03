#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXST 10

struct employee {
//    char name[50];
    char *name;
    int number;
    float salary;
};

//struct employee tab[MAXST];
struct employee *tab_pt[MAXST];
//struct employee *pt_tab;

float average();
void delete_row(int row);

void read_tab();
void write_tab(FILE *);

void write_name_salary();

void sort_tab_name();
void sort_tab_number();

void generate();


int main()
{
    generate();
    write_tab(stdout);
    FILE *fout;
    fout = fopen("tab.txt", "w");
    
    write_tab(fout);
    fclose(fout);
    
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
    for (j=0; j < MAXST; j++)  {
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
    for (j=0; j < MAXST; j++)  {
         fprintf(out, "%s  %5d %10.2f \n", tab_pt[j]->name, tab_pt[j]->number,
                tab_pt[j]->salary);
     }
}





