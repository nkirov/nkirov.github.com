/*********************************
 *  Training contest 2002/2003   *
 *********************************
 * Knight (2A) ver. 1.0.0b ;)    *
 * Name: Borislav Parvanov       *
 * Publishing Date: 11.10.2002   *
 * University: BFU               *
 * Course: IV                    *
 * FN: 99040068                  *
 * Compiler: Borland C++ 3.1     *
 * E-mail: zerosoft@unacs.bg     *
 *********************************/
#include <fstream.h>

struct Offset
{
 int x, y;
};

const Offset AttackOffsets[8] =
{
 {1, 2}, {-1, 2}, {2, 1}, {-2, 1},
 {2, -1}, {-2, -1}, {1, -2}, {-1, -2}
};

void main()
{
 ifstream in("knight.inp");
 ofstream out("knight.out");

 int nNumTests, nFieldsUnderAttack;
 char szPosition[3];

 in >> nNumTests;
 while (nNumTests--)
 {
  in >> szPosition;
  nFieldsUnderAttack=0;

  int px = szPosition[0]-'a'+1;
  int py = szPosition[1]-'1'+1;

  for (int i=0; i<8; i++)
   if (px+AttackOffsets[i].x >= 1 &&
       px+AttackOffsets[i].x <= 8 &&
       py+AttackOffsets[i].y >= 1 &&
       py+AttackOffsets[i].y <= 8) nFieldsUnderAttack++;

  out << nFieldsUnderAttack << endl;
 }

 in.close();
 out.close();
}
