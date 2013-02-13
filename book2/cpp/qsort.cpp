// qsort.cpp
#include <iostream>
#include <vector>
#include "utilv.h"
using namespace std;

void swap(int& x, int& y)
{ int temp = x; x = y; y = temp; }

void quicksort(vector<int>&v, int left, int right)
{ int i=left, j=right;
  int x=v[(i + j)/2];
  do
  { while (v[i] < x) i++;
    while (v[j] > x) j--;
    if (i<=j)
    { swap(v[i], v[j]); i++; j--; }
  }
  while (i<=j);
  if (left<j) quicksort(v, left, j);
  if (i<right) quicksort(v, i, right);
}
int main()
{ cout << "Enter vector size: ";
  int n;
  cin >> n;
  vector<int> v(n);
  generate(v);
  print(v);
  quicksort(v, 0, v.size()-1);
  print(v);
  return 0;
}
