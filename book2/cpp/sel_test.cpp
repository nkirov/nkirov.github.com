// sels_test.cpp 
#include <iostream> 
#include <vector> 
#include "selsort.h" 
#include "utilv.h" 
using namespace std; 

int main() 
{ cout << "Enter vector size: "; 
  int n; 
  cin >> n; 
  vector<int> v(n); 
  generate(v); 
  print(v); 
  selection_sort(v); 
  print(v); 
  return 0; 
} 
