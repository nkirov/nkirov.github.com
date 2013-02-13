#include <stdio.h>
#include <map>
#include <string>
using namespace std;

struct ltstr
{
	bool operator()(const string &s1, const string &s2) const{
	  return strcmp(s1.c_str(), s2.c_str()) > 0;
  }
};

typedef map<string, int, ltstr> myMap;

void iterateOverMap(myMap s)
{
	for (myMap::iterator it = s.begin(); it != s.end(); it++)
		printf("%s %d\n", ((string)it->first).c_str(), it->second);
	printf("\n");
}

int main()
{  
	myMap months;

	months["january"] = 31;
	months["february"] = 28;
	months["march"] = 31;
	months["april"] = 30;
	months["may"] = 31;
	months["june"] = 30;
	months["july"] = 31;
	months["august"] = 31;
	months["september"] = 30;
	months["october"] = 31;
	months["november"] = 30;
	months["december"] = 31;

	iterateOverMap(months);

	return 0;
}