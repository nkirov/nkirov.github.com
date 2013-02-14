/*
Atanas Zhivkov Angov, SWU "N.Rilski", III kurs, f.N 82446
zadacha 3, 18.10.2002
Borland C++ 3.1
*/
#include<stdio.h>
#include<string.h>

FILE *mrun=fopen("bricks.inp","r"),*blah=fopen("bricks.out","w");
int broj,wisochina=0,wisochinaMAX=0;

class brick
{
 public:
  void make_positions();
  char col[6];
  char poz[24][4];
};

void brick::make_positions()
{//wseki red za edna poziciq;
 poz[0][0]=col[0]; poz[0][1]=col[1]; poz[0][2]=col[2]; poz[0][3]=col[3];
 poz[1][0]=col[2]; poz[1][1]=col[0]; poz[1][2]=col[3]; poz[1][3]=col[1];
 poz[2][0]=col[3]; poz[2][1]=col[2]; poz[2][2]=col[1]; poz[2][3]=col[0];
 poz[3][0]=col[1]; poz[3][1]=col[3]; poz[3][2]=col[0]; poz[3][3]=col[2];
 poz[4][0]=col[0]; poz[4][1]=col[2]; poz[4][2]=col[1]; poz[4][3]=col[3];
 poz[5][0]=col[1]; poz[5][1]=col[0]; poz[5][2]=col[3]; poz[5][3]=col[2];
 poz[6][0]=col[3]; poz[6][1]=col[1]; poz[6][2]=col[2]; poz[6][3]=col[0];
 poz[7][0]=col[2]; poz[7][1]=col[3]; poz[7][2]=col[0]; poz[7][3]=col[1];
 poz[8][0]=col[0]; poz[8][1]=col[5]; poz[8][2]=col[4]; poz[8][3]=col[3];
 poz[9][0]=col[4]; poz[9][1]=col[0]; poz[9][2]=col[3]; poz[9][3]=col[5];
 poz[10][0]=col[3];poz[10][1]=col[4];poz[10][2]=col[5];poz[10][3]=col[0];
 poz[11][0]=col[5];poz[11][1]=col[3];poz[11][2]=col[0];poz[11][3]=col[4];
 poz[12][0]=col[0];poz[12][1]=col[4];poz[12][2]=col[5];poz[12][3]=col[3];
 poz[13][0]=col[5];poz[13][1]=col[0];poz[13][2]=col[3];poz[13][3]=col[4];
 poz[14][0]=col[3];poz[14][1]=col[5];poz[14][2]=col[4];poz[14][3]=col[0];
 poz[15][0]=col[4];poz[15][1]=col[3];poz[15][2]=col[0];poz[15][3]=col[5];
 poz[16][0]=col[5];poz[16][1]=col[1];poz[16][2]=col[2];poz[16][3]=col[4];
 poz[17][0]=col[2];poz[17][1]=col[5];poz[17][2]=col[4];poz[17][3]=col[1];
 poz[18][0]=col[4];poz[18][1]=col[2];poz[18][2]=col[1];poz[18][3]=col[5];
 poz[19][0]=col[1];poz[19][1]=col[4];poz[19][2]=col[5];poz[19][3]=col[2];
 poz[20][0]=col[5];poz[20][1]=col[2];poz[20][2]=col[1];poz[20][3]=col[4];
 poz[21][0]=col[1];poz[21][1]=col[5];poz[21][2]=col[4];poz[21][3]=col[2];
 poz[22][0]=col[4];poz[22][1]=col[1];poz[22][2]=col[2];poz[22][3]=col[5];
 poz[23][0]=col[2];poz[23][1]=col[4];poz[23][2]=col[5];poz[23][3]=col[1];
// strncat(poz[0],col,4);
}

brick brickz[103];

int paswat_li_si(brick a, brick b)
{
 int i,j,m;
 for(i=0;i<24;i++)
  for(j=0;j<24;j++)
   {
    if(a.poz[i][0]==b.poz[j][0]&&a.poz[i][1]==b.poz[j][1]&&a.poz[i][2]==b.poz[j][2]&&a.poz[i][3]==b.poz[j][3])return 1;
   }
 return 0;
}

void check()
{
 int i,j;
 for(i=0;i<broj;i++)
  {
   if(wisochinaMAX<wisochina)wisochinaMAX=wisochina;
   wisochina=0;
   for(j=0;j<broj;j++)if(paswat_li_si(brickz[i],brickz[j]))wisochina++;
  }
}

void main()
{
 fscanf(mrun,"%d",&broj);
 int i,j,l;
 for(i=0;i<broj;i++)
  {
   fscanf(mrun,"%s",&brickz[i].col);
   brickz[i].make_positions();
  }
 check();
 fprintf(blah,"%d",wisochinaMAX);
 fclose(blah);
 fclose(mrun);
}
