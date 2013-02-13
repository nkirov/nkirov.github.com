#include <iostream>
#include <string>
#include <set>
using namespace std;

int main()
{ set<string> s;
  s.insert("Tom");
  s.insert("Dick");
  s.insert("Tom"); // !!!
  s.insert("Harry");

  cout << "set: " << endl;
  set<string>::iterator p;
  for (p = s.begin(); p!= s.end(); p++)
     cout << *p << "\n";
      
  multiset<string> ms;
  ms.insert("Tom");
  ms.insert("Dick");
  ms.insert("Tom"); // !!!
  ms.insert("Harry");

  cout << "multiset: " << endl;
  multiset<string>::iterator mp;
  for (mp = ms.begin(); mp!= ms.end(); mp++)
     cout << *mp << "\n";
  cout << ms.size() << endl;   
        
  return 0;   
}    
