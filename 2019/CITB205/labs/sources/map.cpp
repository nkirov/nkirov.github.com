#include <iostream>
#include <string>
#include <map>
#include <fstream>
using namespace std;

int main()
{
    map<string, int> s;
  ifstream iff;
  iff.open("map.cpp");
  string ss;
  while(iff >> ss)
  {
      s[ss]++;
  }
  iff.close();

  map<string, int>::iterator p;
  for (p = s.begin(); p!= s.end(); p++)
     cout << p->first << " " << p->second << "\n";
  cout << s.size() << endl;

  return 0;
}
