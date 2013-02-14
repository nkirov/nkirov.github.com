#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

main(){
  pid_t pid, cpid;
  int status=100;
  char c;
  
  printf("Common\n");
  scanf("%c",&c);
  cpid=fork();
  if (cpid==(pid_t)(-1))
  {
    printf("fork() ERROR\n");
    exit(1);
  }
  pid=getpid();
  if (cpid==(pid_t)0)
  { /* Child */
    printf("* Child (%d) *\n",pid);
    scanf("%c",&c);
  }
  else
  { /* Parent */
    printf("- Parent (%d) -\n",pid);
    scanf("%c",&c);
  }
  wait(&status);
  printf("End (%d)\n",pid);
  exit(0);
}



