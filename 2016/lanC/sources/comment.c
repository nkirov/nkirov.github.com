/*
 Exercise 1-23. Write a program to remove all comments from a C program. 
 Don't forget to handle quoted strings and character constants properly. 
 C comments don't nest.
 */

#include <stdio.h>
#include <string.h>
 
#define MAXL 100

int main()
{
    char buf[MAXL];
    int flag = 0, i;
              
    FILE *fp;
    if ((fp = fopen("comment.c", "r")) == NULL)
    {
        printf("NOT FOUND");  /* ERROR */
        return 1; 
    }

    FILE *fq;
    if ((fq= fopen("comm.c", "w")) == NULL)
    {
        printf("NOT");
        return 1;
    }
    
    while (fgets(buf, MAXL, fp) != NULL)
    {
        if (strlen(buf) > 1)
            for (i = 1; buf[i] != '\0'; i++)
                {
//                    printf("%c%c  %d | ", buf[i-1], buf[i], flag);
                    if (buf[i-1] == '/' && buf[i] == '/')
                    {
                        buf[i-1] = '\n'; buf[i] = '\0';
                    }
                    else if (buf[i-1] == '/' && buf[i] == '*')
                    {
                        flag = 1;
                    }
                    else if (buf[i-1] == '*' && buf[i] == '/')
                    {
                        flag = 0; buf[i-1] = ' '; buf[i] = ' ';
                    }
                    if (flag == 1) buf[i-1] = ' ';
                }
    
        fputs(buf, stdout);
    }
    fclose(fp);  /* close the file !!!
                  */
/**/fclose(fq); /**/
 
    return 0;
}
