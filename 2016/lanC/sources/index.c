#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAXL 100

struct item {
    char * word;
    int lines[100];
    int nline;
};

struct item * items[1000];
int n = 0;
int row = 0;

int find(char * b)
{
    
    return 0;
}

void insertt(char * buf)
{
    int i, ibeg = 0;
    int found;
    char *pct;
    for(i = 0; buf[i] != '\0'; i++)
    {
        if (!isalpha(buf[i]))
        {
            if (ibeg < i)
            {
                pct = (char *)malloc(sizeof(char)*(i - ibeg + 1));
                strcpy(pct, buf + ibeg);
                if ((found = find(pct)) < 0)
                { //add word
                    items[n] = (struct item *)malloc(sizeof(struct item));
                    items[n]->word = pct;
                    items[n]->nline = 0;
                    items[n++]->lines[0] = row;
                }
                else
                { // add line
                    (items[found]->nline)++;
                    items[found]->lines[items[found]->nline] = row;
                }
                ibeg = 0;
            }
        }
        else if (ibeg == 0)
        {
                ibeg = i;
        }
    }
    
    
}


int main()
{
    char buf[MAXL];
    while (fgets(buf, MAXL, stdin))
    {
        row++;
        
    }
    
           
           
    return 0;
}