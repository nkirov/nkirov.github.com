// lsearch.cpp
#include <iostream>
#include <vector>
#include "utilv.h"
using namespace std;

int linear_search(vector<int> v, int a)
{ int i;
  for (i = 0; i < v.size(); i++)
      if (v[i] == a) return i;
  return -1;
}

int main()
{ vector<int> v(20);
  generate(v);
  print(v);
  cout << "Enter number to search for: ";
  int n;
  cin >> n;
  int j = linear_search(v, n);
  cout << "Found in position " << j << "\n";
  return 0;
}
