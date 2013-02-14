/*
Atanas Angov, SWU "Neofit Rilski", III Kurs, fN. 82446
zadacha 2A, 11.10.2002g
Borland C++ 3.1
*/
#include<stdio.h>
const int board[8][8] = {{2,3,4,4,4,4,3,2},
			 {3,4,6,6,6,6,4,3},
			 {4,6,8,8,8,8,6,4},
			 {4,6,8,8,8,8,6,4},
			 {4,6,8,8,8,8,6,4},
			 {4,6,8,8,8,8,6,4},
			 {3,4,6,6,6,6,4,3},
			 {2,3,4,4,4,4,3,2}};
FILE *mrun=fopen("knight.inp","r"),*blah=fopen("knight.out","w");

void print(char c, int d)
{
 int real_pos;
 switch(c)
  {
   case 'a':real_pos=1;break;
   case 'b':real_pos=2;break;
   case 'c':real_pos=3;break;
   case 'd':real_pos=4;break;
   case 'e':real_pos=5;break;
   case 'f':real_pos=6;break;
   case 'g':real_pos=7;break;
   case 'h':real_pos=8;break;
   default:break;
  }
 fprintf(blah,"%d\n",board[d-1][real_pos-1]);
}

void main()
{
 int primeri,i,chislence;
 char charche,dummy;
 fscanf(mrun,"%d",&primeri);
 for(i=0;i<primeri;i++)
  {
   fscanf(mrun,"%c",&dummy);
   fscanf(mrun,"%c",&charche);
   fscanf(mrun,"%d",&chislence);
   print(charche,chislence);
  }
 fclose(mrun);
 fclose(blah);
}
