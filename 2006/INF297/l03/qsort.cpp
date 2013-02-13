// qsort.cpp
#include <iostream>
#include <vector>
using namespace std;

void swap(int &x, int &y)
{ int temp = x;
  x = y;
  y = temp;
}

void quicksort(vector<int> &v, int left, int right)
{ int i=left, j=right;
  int x=v[(i + j)/2];
  do
  { while (v[i] < x) i++;
    while (v[j] > x) j--;
    if (i <= j)
    { swap(v[i], v[j]); i++; j--; }
  }
  while (i <= j);
  if (left < j) quicksort(v, left, j);
  if (i < right) quicksort(v, i, right);
}

int main()
{ vector<int> v;
  cout << "Enter elements: " << endl;
  int elem;
  while (cin >> elem) v.push_back(elem);
  quicksort(v, 0, v.size()-1);
  for (int i=0; i<v.size(); i++) cout << v[i] << " ";
  return 0;
}
