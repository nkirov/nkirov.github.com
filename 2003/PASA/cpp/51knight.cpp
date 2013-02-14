/****************************************************************************
 AUTHOR:        Димитър Х. Златев
 COPYRIGHT (C): 21/10/2001 Unikat (R). All Rights Reserved.
 E-MAIL:        unikat@mail.com 
 COMPILER:      Dev-C++ 4.9.5.0  
 FILE:          task2a.cpp
 DESCRIPTION:   This program determine how many fields on the chessboard are 
 under attack of the knight. There are no other chess pieces on the board.
 
Input file: knight.inp - The first line of the file contains the only number N,
 1 <= N <= 100 — the number of the test cases. Then N lines follow. Each of these lines 
contains two characters (lowercase letter from 'a' to 'h' and integer 
from 1 to 8) — usual chess description of the field where knight is placed. 
Letter denotes horizontal position and number denotes vertical position.

Output file: knight.out - Output file contain exactly N lines.
Each line contain the only integer - number of the fields on
the chessboard that are under attack of the knight. 
****************************************************************************/

#include <string>
#include <fstream>

using namespace std;

int chess(string v);
 /* Цел: Връща броят на възможните ходове на коня */
 
int main()
 { ifstream in("knight.inp");
   ofstream out("knight.out");
   string value;
   int temp = 0;
   in >> temp;
   while (in >> value)
    { int turn = chess(value);
      if (turn == -1)
       out << "Invalid input!" << "\n";
      else
       out << turn << "\n";
    }
  return 0;
 }     

int chess(string v)
 { if (v == "a1" || v == "a8" || v == "h1" || v == "h8")
    return 2;
   else if (v == "a2" || v == "a7" || v == "b1" || v == "b8" || v == "g1" || v == "g8"
    || v == "h2" || v == "h7")
    return 3;
   else if (v == "a3" || v == "a4" || v == "a5" || v == "a6" || v == "b2" || v == "b7"
    || v == "c1" || v == "c8" || v == "d1" || v == "d8" || v == "e1" || v == "e8"
    || v == "f1" || v == "f8" || v == "g2" || v == "g7" || v == "h3" || v == "h4"
    || v == "h5" || v == "h6")
    return 4;
   else if (v == "b3" || v == "b4" || v == "b5" || v == "b6" || v == "c2" || v == "c7"
    || v == "d2" || v == "d7" || v == "e2" || v == "e7" || v == "f2" || v == "f7"
    || v == "g3" || v == "g4" || v == "g5" || v == "g6")
    return 6;
   else if (v == "c3" || v == "c4" || v == "c5" || v == "c6" || v == "d3" || v == "d4"
    || v == "d5" || v == "d6" || v == "e3" || v == "e4" || v == "e5" || v == "e6"
    || v == "f3" || v == "f4" || v == "f5" || v == "f6")
    return 8;
   else
    return -1;
 }      
