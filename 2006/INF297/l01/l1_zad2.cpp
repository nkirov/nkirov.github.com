// n3.cpp
#include<iostream>
#include<string>
using namespace std;
 
int equiv=0; 
int main()
{ const string a0 = "00000000000000000000000000";
  const int N = 10000;
  string a[N];
  int n, i, j;
  for (i=0; i<N; i++) a[i]=a0;
  string word, b;
  cin >> n;
  for (i=0; i<n; i++)
  {  string b = a0;
     cin >> word;
     for (j=0; j<word.length(); j++) b[static_cast<int>(word[j]-'a')]='1';     
     for (j=0; j<equiv && b!=a[j]; j++);
     if (b!=a[j])  { equiv++; a[equiv]=b; }                      
  }      
  cout << equiv << endl;
  char ch; cin >> ch;
  return 0;   
}    
