#include <stdio.h>
#include <stdlib.h>
int SortAndPrint (char *input, int len)
{
    int i, j, k;
    char temp;
    for (i=0; i<len; i++)
    {
        for (j=i; j<len; j++)
            if (input[j] < input[i] && !(input[j]==48 && i==0))
            {
                temp=input[i];
                input[i]=input[j];
                input[j]=temp;
            }
        for (k=0; k<i+1; k++)
            printf ("%c", input[k]);
        printf ("\n");
    }
}

int main()
{
    char input[50];
    int len, i;
    
    while (scanf ("%s", input))
        SortAndPrint (input, strlen (input));
}
