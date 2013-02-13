// selsort.cpp 
#include <vector> 
#include "selsort.h" 
using namespace std; 

void swap(int& x, int& y) 
{  int temp = x;   x = y;   y = temp;  } 

int min_position(vector<int>& a, int from, int to) 
{ int min_pos = from; 
  int i; 
  for (i = from + 1; i <= to; i++) 
       if (a[i] < a[min_pos]) min_pos = i; 
  return min_pos; 
} 

void selection_sort(vector<int>& a) 
{ int next; /* the next position to be set to the minimum */ 

  for (next = 0; next < a.size() - 1; next++) 
  {  /* find the position of the minimum */ 
    int min_pos = min_position(a, next, a.size() - 1); 
    if (min_pos != next) swap(a[min_pos], a[next]); 
  } 
} 
// end selsort.cpp 
