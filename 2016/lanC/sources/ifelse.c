#include <stdio.h>

int main()
{
    char name[10];
    printf("Input name: ");
    scanf("%s", name);
//    printf("%s\n", name);
    
    int num;
    scanf("%d", &num);
//    printf("%d\n", num);

    float sum = 0;
    if (name[0] == 'p') sum = num*0.01;
    else if (name[0] == 'n') sum = num*0.05;
    else if (name[0] == 'd') sum = num*0.1;
    else if (name[0] == 'q') sum = num*0.25;
    else printf("Error\n");
    
    printf("Sum = %f\n", sum);

       return 0;
}
