#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>

int main(){
  const char msg[]="test message 1",
	     fname[]="test.dat";
	int  fd;

/* creat() syzdava file s ukazanite permissions - v sluchaja -rwxr--r--
   syshtoto mozhe da se postigne i ako se izpolzva osmichnata maska 0644

   Dava se zadacha da se proveri kakvo shte se poluchi ako rezhima e 0777
   i sled tova diskusija za umask-ata */

  if((fd=creat(fname,S_IRWXU|S_IRGRP|S_IROTH)) == -1){
    printf("creat(): Error!\n");
    exit(1);
  };

/* Tuk e dobre da se pravi proverka dali e uspeshen zapisa */

  write(fd, &msg, sizeof(msg));
  close(fd);

  return 0;
}

