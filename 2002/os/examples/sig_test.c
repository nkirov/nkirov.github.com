#include <stdio.h>
#include <signal.h>
#include <unistd.h>

void sig_handler(int sig){
  char c;
  signal(sig, SIG_IGN);
  switch(sig){
    case SIGINT:
      signal(SIGINT, SIG_IGN);
      printf("received SIGINT, ignoring\n");
      return;
    case SIGTERM:
      printf("received SIGTERM, terminating\n");
      break;
    case SIGCHLD:
      printf("received SIGCHLD, ignoring\n");
      return;
    }
  exit(1);
}

main(){
  int sec=100;
  
  signal(SIGINT, sig_handler);
  signal(SIGTERM, sig_handler);
  signal(SIGCHLD, sig_handler);
  
  while (1)
  {
   printf("Waiting for signal ...\n"); 
   sleep(sec);
  }
  exit(0);
}
