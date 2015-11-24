#include <stdio.h>

int main()
{
    FILE *fi;
    int k = 0;
    char a[20] = "A";;
    fi = fopen("a.txt", "w");
    
    fprintf(fi, "%d %s \n", 100, "verify");
//    fclose(fi);
    
    fi = fopen("a.txt", "r");
    if (fi == NULL) printf("NULL");
    printf("%d \n", fscanf(fi, "%d %s", &k, a));
    
    printf("%d %s \n", k, a);


    return 0;
}