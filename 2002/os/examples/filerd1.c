#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>

#define STDOUT 1 /* file descriptor No 1 e standartnija izhod */
int main(){
  const char fname[]="test.dat";
	int  fd, nbytes;
	char buf[512]; /* v tozi bufer se chete informacijata ot file-a */

/* open() otvarja file (v sluchaja za chetene) */

  if((fd=open(fname,O_RDONLY)) == -1){
    printf("open(): Error!\n");
    exit(1);
  };

  if((nbytes=read(fd, &buf, sizeof(buf))) == -1)
    printf("read(): Error!\n");
  else
    write(STDOUT, &buf, nbytes);
  printf("\n");
  close(fd);

  return 0;
}

