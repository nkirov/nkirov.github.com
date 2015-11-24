#include <stdio.h>

int main()
{
    char a[100] = "Hello!";
    char buf[200];
    int u = 100;
    
    printf("%s %d\n", a, u);
    sprintf(buf, "%s %d", a, u);
//    u = 1234;
//    sprintf(buf, "%d", u);
    
    printf("%s \n", buf);
    
    scanf("%d %s", &u, a);
    printf("%s %d\n", a, u);
    
    sscanf(buf, "%s %d", a, &u);
    printf("%s %d\n", a, u);
    
    char num[] = "12390";
    int number;
    sscanf(num, "%d", &number);
    printf("%d \n", number);

    

    return 0;
}