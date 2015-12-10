#include <stdio.h>
#include <string.h>

#define MAXL 100

int main()
{
    char buf[MAXL];
    int flag = 0, i;
/*  comment 3 */
 /* comment 3 */
              
    FILE *fp;
    if ((fp = fopen("comment.c", "r")) == NULL)
    /* cooment 4 */
    {
        printf("NOT FOUND"); /* comment 5          
*/
        
        /* aaa 1 */ return 1; 
    }
//  comment 1

    FILE *fq;
    if ((fq= fopen("comm.c", "w")) == NULL) // cooment 2
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
    
        fputs(buf, stdout); // comment pppp
    }
    fclose(fp);
    fclose(fq);
 
    return 0;
}
