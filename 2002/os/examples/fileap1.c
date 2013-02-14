#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>

int main(){
  const char msg[]="test message 3",
	     fname[]="test.dat";
	int  fd;

/* open() otvarja file (v sluchaja za zapis) */

  if((fd=open(fname,O_WRONLY|O_APPEND)) == -1){
    printf("open(): Error!\n");
    exit(1);
  };

/* Tuk e dobre da se pravi proverka dali e uspeshen zapisa */

  write(fd, &msg, sizeof(msg));
  close(fd);

  return 0;
}

