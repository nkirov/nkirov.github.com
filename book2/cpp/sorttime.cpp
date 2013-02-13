// sorttime.cpp
#include <iostream>
#include <vector>
#include "selsort.h"
#include "utilv.h"
using namespace std;

#include "ccc_time.cpp"

int main()
{ cout << "Enter vector size: ";
  int n;
  cin >> n;
  vector<int> v(n);
  generate(v);

  Time before;
  selection_sort(v);
  Time after;
  cout << "Elapsed time = " << after.seconds_from(before)
       << " seconds\n";
  return 0;
}

