/*******************
Nikolay Kirov
zadacha 3A, 18.10.2002g. - Colored bricks
Dev-C++ v.4
*******************/
#include <fstream>
#include <string>
#define N 103
using namespace std;

bool equiv(string, string);

int main()
{
 ifstream fin("bricks.inp");
 int n;
 fin >> n;
 string s[N];
 for (int i=0; i<n; i++) fin >> s[i];
 string s3[N][3];
 for (int i=0; i<n; i++)
 {
  s3[i][0]="    ";
  s3[i][0][0]=s[i][0]; s3[i][0][1]=s[i][1];
  s3[i][0][2]=s[i][3]; s3[i][0][3]=s[i][2];

  s3[i][1]="    ";
  s3[i][1][0]=s[i][0]; s3[i][1][1]=s[i][4];
  s3[i][1][2]=s[i][3]; s3[i][1][3]=s[i][5];

  s3[i][2]="    ";
  s3[i][2][0]=s[i][1]; s3[i][2][1]=s[i][4];
  s3[i][2][2]=s[i][2]; s3[i][2][3]=s[i][5];
 }
 int mark3[N][3]={0}, mark_max=0, mark=0;
 for (int i=0; i<n; i++)
  for (int iii=0; iii<3; iii++)
 {
  mark=1;
  for (int j=i+1; j<n; j++)
    for (int jjj=0; jjj<3; jjj++)
     if (!mark3[j][jjj] && equiv(s3[i][iii], s3[j][jjj]))
  {
   mark3[j][jjj]=1; mark++;
  }
  if (mark>mark_max) mark_max=mark;
 }
 ofstream fout("bricks.out");
 fout << mark_max << "\n";
 return 0;
}

bool equiv(string s1, string s2)
{
 s1=s1+s1;
 for (int i=0; i<4; i++) if (s1.substr(i,4) == s2) return true;
 char ch=s2[0]; s2[0]=s2[3]; s2[3]=ch;
      ch=s2[1]; s2[1]=s2[2]; s2[2]=ch;
 for (int i=0; i<4; i++) if (s1.substr(i,4) == s2) return true;
 return false;
}
