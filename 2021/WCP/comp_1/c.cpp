
// Н. Киров
#include <iostream>
#include <string>
#include <set>
#include <vector>

using namespace std;

class classcomp {
public:
  bool operator() (const string& s1, const string& s2) const
  { 
	if (s1.length() > s2.length()) return true;
	if (s1.length() < s2.length()) return false;
	return s1 > s2;
  }
};

const int MAX = 100;

void doit()
{
    int n;
	cin >> n;
   	multiset<string, classcomp> sett;
	string s;
	for (int i=0; i < n; i++)
	{
		cin >> s;
		sett.insert(s);
//		if (sett.size() > MAX) sett.erase(--sett.end());
	}
	vector<string> v;
	for (muliset<string, classcomp>::iterator it = sett.begin(); it != sett.end(); ++it) v.push_back(*it);
    //      for (int i=0; i < v.size(); i++) cout << " " << v[i]; cout << endl;

    cout << v[v.size()/2] << endl;
}

int main()
{
    int tests_number;
    cin >> tests_number;
    for (int tn = 0; tn < tests_number; tn++) doit();
	return 0;
}
