// utilv.cpp 
#include <iostream> 
#include <vector> 
#include <cstdlib> 
#include <ctime> 
#include "utilv.h" 
using namespace std; 

void print(vector<int> a) 
{ int i; 
  for (i = 0; i < a.size(); i++) cout << a[i] << " "; 
  cout << "\n"; 
} 

void rand_seed() 
{ int seed = static_cast<int>(time(0)); 
  srand(seed); 
} 

int rand_int(int a, int b) 
{ return a + rand() % (b - a + 1); } 

void generate(vector<int>& v) 
{ rand_seed(); 
  int i; 
  for (i = 0; i < v.size(); i++) v[i] = rand_int(1, 100); 
} 
// end utilv.cpp 
