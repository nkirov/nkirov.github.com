#include <stdio.h>
#include <conio.h>
int N;
int i;
char* names[20];
int votes[1000][20];
int counters[1000];
int number_votes;
int current_votes[20];
int queue[20];
int removed[20];
int tempmax;
int cont=1;
void remove()
{
   for(int temp=0; temp<N; temp++)
   {
	queue[temp]=-1;
   }
   int min=32000;
   int max=-1;
   for(int temp2=0; temp2<N; temp2++)
   {
	  if(removed[temp2]) continue;
	  if(min>current_votes[temp2])
	  {
		min=current_votes[temp2];
	  }
	  if(max<current_votes[temp2])
	  {
		  max=current_votes[temp2];
	  }
   }
   if(max==min)
   {
	   tempmax=max;
	   cont=0;
	   return;
   }
   int counter=0;
   for(int temp3=0; temp3<number_votes; temp3++)
   {
	  if(removed[temp3]) continue;
	  if(current_votes[temp3]==min)
	  {
		queue[counter++]=temp3;
	  }
   }
   counter=0;
   while(queue[counter]!=-1&&counter<20)
   {
	counters[queue[counter]]++;
	removed[queue[counter]]=1;
	counter++;

   }
}
int recount()
{
	for(int j=0; j<N; j++)
	{
		current_votes[j]=0;
	}
	for(int m=0; m<number_votes; m++)
	{
	   if(!removed[votes[m][counters[m]]])
	   {
		current_votes[votes[m][counters[m]]]++;
	   }
	}
	for(int bla=0; bla<N; bla++ )
	{
		if(!removed[current_votes[bla]])
		if(current_votes[bla]>number_votes/2)
		{
			return bla;
		}
	}
	return -1;
}
void main()
{
   FILE * dat =fopen("a.in3","r");
   fscanf(dat,"%d\n", &N);
   //getch();
   for(i=0;i<N; i++ )
   {
	current_votes[i]=0;
	removed[i]=0;
	names[i]= new char[80];
	fgets(names[i],80,dat);
   }
   for(i=0; i<1000; i++)
   {
		counters[i]=0;

   }
   int j=0;
   int k=0;
   int scan=fscanf(dat,"%d",&votes[j][k]);
   votes[j][k]--;
   while(scan!=EOF&&scan!=0)
   {

	   k++;
		if(k%N==0)
		{
			k=0;
			j++;
		}
		scan=fscanf(dat, "%d",&votes[j][k]);
		votes[j][k]--;
   }
   number_votes=j;



//   printf(" %d %d %d", votes[4][0], votes[4][1], votes[4][2]);
   int winner;//=recount;
   while((winner=recount())==-1)
   {
		
	   remove();
	   if(!cont)
		{
			for(int temp3=0; temp3<N; temp3++)
			{
				if(!removed[temp3])
				if(current_votes[temp3]==tempmax)printf("%s", names[temp3]);
			}
			return;
		}
   }
//   printf("%d",winner);
   printf("%s", names[winner]);

}