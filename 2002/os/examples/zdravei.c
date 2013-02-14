#include <stdio.h>
main()
{
 int res;
 char ch;
 scanf(&ch);
 printf("Zdravei 1111  \n");
 res=fork();
 if (res==0)
 {
  scanf(&ch);
  printf("Child !!!!! \n");
 }
 else 
 {
  if (res==-1)
  {
   scanf(&ch); 
   printf("System error !\n"); 
   exit(1);
  }
  else
  {
   scanf(&ch); 
   printf("Parent ?????? \n");
  }
 }
 scanf(&ch);
 printf("Zdravei 2222  \n"); 
}