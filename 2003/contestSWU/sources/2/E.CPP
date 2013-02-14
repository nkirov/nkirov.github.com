#include<stdio.h>
#include<string.h>

char board[100][100],duma[1011];
int size,length,X1,Y1,X,Y,sreshtano=0;

int horizontal(int kak,int a,int b)
{
 int c,temp=1,i=a,j=b;
 if(kak)//ako prowerqwame napred;
  {
	for(c=j+1;c<j+length;c++)
	 {
	  if(board[i][c]!=duma[temp])return 0;
	  temp++;
	 }
	sreshtano=1;
	X1=i;Y1=c-1;X=a;Y=b;
  }
 else
  {
	for(c=j-1;c>j-length;c--)
	 {
	  if(board[i][c]!=duma[temp])return 0;
	  temp++;
	 }
	sreshtano=1;
	X1=i;Y1=c+1;X=a;Y=b;
  }
 return 1;
}

int vertical(int kak,int a,int b)
{
 int c,temp=1,i=a,j=b;
 if(kak)//tyrsim nadolu
  {
	for(c=i+1;c<i+length;c++)
	 {
	  if(board[c][j]!=duma[temp])return 0;
	  temp++;
	 }
	sreshtano=1;
	X1=c-1;Y1=j;X=a,Y=b;
  }
 else
  {
	for(c=i-1;c>i-length;c--)
	 {
	  if(board[c][j]!=duma[temp])return 0;
	  temp++;
	 }
	sreshtano=1;
	X1=c+1;Y1=j;X=a,Y=b;
  }
 return 1;
}


int diag1(int a,int b)
{
 int i=a,j=b,count,temp=1;
 for(count=1;count<length;count++)
  {
	i--;j--;
	if(board[i][j]!=duma[temp])return 0;
	temp++;
  }
 sreshtano=1;
 X1=i;Y1=j;X=a,Y=b;
 return 1;
}

int diag2(int a,int b)
{
 int i=a,j=b,count,temp=1;
 for(count=1;count<length;count++)
  {
	i--;j++;
	if(board[i][j]!=duma[temp])return 0;
	temp++;
  }
 sreshtano=1;
 X1=i;Y1=j;X=a,Y=b;
 return 1;
}

int diag3(int a,int b)
{
 int i=a,j=b,count,temp=1;
 for(count=1;count<length;count++)
  {
	i++;j--;
	if(board[i][j]!=duma[temp])return 0;
	temp++;
  }
 sreshtano=1;
 X1=i;Y1=j;X=a,Y=b;
 return 1;
}

int diag4(int a,int b)
{
 int i=a,j=b,count,temp=1;
 for(count=1;count<length;count++)
  {
	i++;j++;
	if(board[i][j]!=duma[temp])return 0;
	temp++;
  }
 sreshtano=1;
 X1=i;Y1=j;X=a,Y=b;
 return 1;
}

void diagonal(int a,int b)
{
 int i=a,j=b;
 if(i>=length-1 && j>=length-1)diag1(i,j);//nagore i nalqwo
 if(i>=length-1 && j<=size-length)diag2(i,j);//nagore i nadqsno
 if(i<=size-length && j>=length-1)diag3(i,j);//nadolu i nalqwo
 if(i<=size-length && j<=size-length)diag4(i,j);//nadolu i nadqsno
}

void print()
{
 printf("%d,%d %d,%d\n",X+1,Y+1,X1+1,Y1+1);
}

int check()
{
 int i,j;
 for(i=0;i<size;i++)
  for(j=0;j<size;j++)
	{
	 if(j<=size-length && board[i][j]==duma[0])
	  {
		horizontal(1,i,j);
		if(sreshtano)
		 {
		  print();
		  return -1;
		 }
	  }
	 if(j>=length-1 && board[i][j]==duma[0])
	  {
		horizontal(0,i,j);
		if(sreshtano)
		 {
		  print();
		  return -1;
		 }
	  }
	 if(i>=length-1 && board[i][j]==duma[0])
	  {
		vertical(0,i,j);
		if(sreshtano)
		 {
		  print();
		  return -1;
		 }
	  }
	 if(i<=size-length && board[i][j]==duma[0])
	  {
		vertical(1,i,j);
		if(sreshtano)
		 {
		  print();
		  return -1;
		 }
	  }
	 if(board[i][j]==duma[0])
	  {
		diagonal(i,j);
		if(sreshtano)
		 {
		  print();
		  return -1;
		 }
	  }
	}
 return 0;
}

int len()
{
 int i=0;
 while(duma[i]!='\0')i++;
 return i;
}

int main()
{
 int i,j;
// for(i=0;i<4;i++)scanf("%s",&(board[i]));
// printf("dumata e: ");
 scanf("%d",&size);
 for(i=0;i<size;i++)scanf("%s",&(board[i]));
 while(scanf("%s",&duma))
  {
	if(duma[0]=='0')return 0;
	length=len();
	check();
	if(!sreshtano)printf("Not found\n");
	sreshtano=0;
  }
// printf("\nlength=%d",length);
// printf("horizontal=%d",horizontal(1,0,2));*/
// check();
 return 0;
}