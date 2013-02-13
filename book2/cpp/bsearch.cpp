// bsearch.cpp
#include <iostream>
#include <vector>
#include "utilv.h"
#include "selsort.h"
using namespace std;

int binary_search(vector<int> v, int from, int to, int a)
{ if (from > to)  return -1;
  int mid = (from + to) / 2;
  int diff = v[mid] - a;
  if (diff == 0) return mid;          /* v[mid] == a */
  else if (diff < 0)                  /* v[mid] < a  */
     return binary_search(v, mid + 1, to, a);
  else                                /* v[mid] > a  */
     return binary_search(v, from, mid - 1, a);
}

int main()
{ vector<int> v(20);
  generate(v);
  selection_sort(v);
  print(v);
  cout << "Enter number to search for: ";
  int n;
  cin >> n;
  int j = binary_search(v, 0, v.size() - 1, n);
  cout << "Found in position " << j << "\n";
  return 0;
}
