#include<iostream>
#include<list>

//Code Fragment: STLiterator
using namespace std;                        // make std available
//typedef int Object;
template <typename Object>
void print(list<Object>& L) {	            // print an STL list
  list<Object>::iterator iter = L.begin();  // vector iterator
  while (iter != L.end()) {		  		    // while more remain
    cout << *iter << " ";				    // print next
    ++iter;						            // advance
  }
}

int main()
{ list<int> l;
  l.push_back(10);
  l.push_back(20);
  l.push_back(30);
  print(l);
  return 0;    
}    
