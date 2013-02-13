// matrix.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

const int BAL_ROWS = 6;
const int BAL_COLS = 5;

double future_value(double init_bal, double p, int nyear)
{  double b = init_bal * pow(1 + p/12/100, 12*nyear);
   return b;   
}
void print_table(const double table[][BAL_COLS], int table_rows)
{  int i, j;
   cout << fixed << setprecision(2);
   for (i = 0; i < table_rows; i++)
   {  for (j = 0; j < BAL_COLS; j++)
         cout << setw(10) << table[i][j];
      cout << "\n";
   }
}

int main()
{  double bal[BAL_ROWS][BAL_COLS];
   int i;
   int j;
   for (i = 0; i < BAL_ROWS; i++)
      for (j = 0; j < BAL_COLS; j++)
         bal[i][j] = future_value(10000, 5+i*0.5, 5+j*5);
   print_table(bal, BAL_ROWS);
   return 0;
}
