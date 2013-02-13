#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

void asort()
{ int a[6] = {1, 4, 2, 8, 5, 7};
  sort(a, a + 6);
  for (int i=0; i<6; i++) cout << a[i] << " ";
}

void vsort()
{ vector<string> v;
  v.push_back("ccc");
  v.push_back("aa");  
  v.push_back("zz");
  v.push_back("tttt");   
  v.push_back("k"); 
  v.push_back("xxx");
  sort(v.begin(), v.end());
  for (int i=0; i<v.size(); i++) cout << v[i] << " ";
}

int main()
{ asort();
  cout << endl; 
  vsort();
  return 0;   
}    
