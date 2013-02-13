// print0.cpp
#include  <iostream>
using std::cout;
using std::cin;
using std::endl;

unsigned n = 6; 

void printRed1(unsigned k, unsigned long res)
{ cout << res << " ";
  if (k < n) printRed1(k + 1, res*10);
  cout << res << " ";
}

unsigned k = 0;

void printRed2(unsigned long res)
{  k++;
  cout << res << " ";
  if (k < n) printRed2(res*10);
  cout << res << " ";
}

unsigned long res = 1;

void printRed3()
{  k++;
  res *= 10;
  cout << res << " ";
  if (k < n) printRed3();
  cout << res << " ";
  res /= 10;
} 

int main()
{
    while ( cin >> n )
    {
          printRed1(1,10); cout << endl;
          k = 0;
          printRed2(10);   cout << endl;
          k = 0;
          printRed3();     cout << endl;
    }      
    return 0;
} 
