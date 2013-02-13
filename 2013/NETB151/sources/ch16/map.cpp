#include <iostream>
#include <string>
#include <map>
using namespace std;

int main()
{ map<string, int> scores;
  scores["Tom"] = 90;
  scores["Dick"] = 86;
  scores["Harry"] = 100;
  
  map<string, int>::iterator p;
  for (p = scores.begin(); p!= scores.end(); p++)
     cout << p->first << " " << p->second << "\n";
  cout << scores.size() << endl;   
  
  multimap<string, int> mmap;
  mmap.insert(pair<string, int>("Tom", 90));
  mmap.insert(pair<string, int>("Dick", 86));
  mmap.insert(pair<string, int>("Harry", 100));
  mmap.insert(pair<string, int>("Tom", 190));
  
  multimap<string, int>::iterator q;
  for (q = mmap.begin(); q!= mmap.end(); q++)
     cout << q->first << " " << q->second << "\n";
  cout << mmap.size() << endl;   

  return 0;
}    
