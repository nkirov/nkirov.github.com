/*******************
Nikolay Kirov
zadacha 2A, 11.10.2002g - Lonesome knight 
Dev-C++ v.4
*******************/
#include <fstream>
#include <string>
using namespace std;

const int board[8][8] = {
{2,3,4,4,4,4,3,2},
{3,4,6,6,6,6,4,3},
{4,6,8,8,8,8,6,4},
{4,6,8,8,8,8,6,4},
{4,6,8,8,8,8,6,4},
{4,6,8,8,8,8,6,4},
{3,4,6,6,6,6,4,3},
{2,3,4,4,4,4,3,2}};

int main()
{
 ifstream finp("knight.inp");
 ofstream fout("knight.out");
 int num;
 finp >> num;
 for(int i=0; i<num; i++)
 {
  string pos;
  finp >> pos;
  fout << board[pos[0]-'a'][pos[1]-'1'] << "\n";
 }
 return 0;
}

