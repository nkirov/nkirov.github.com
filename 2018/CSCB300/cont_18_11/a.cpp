/*
 Дадено се множество от N цели положителни числа. Да се напише програма, която да намира медианата на множеството. Медиана е средния елемент в нареденото множество.
 Вход. Най-напред на входа се задава броя на примерите. За всеки пример на отделен ред е даден броя N на елементите на множеството (N < 1011). Следват самите елементи, които са числа, по-малки от 1020.
 Изход. За всеки пример на изхода на отделен ред се отпечатва отговора. Ако има два средни елементи, да се отпечати по-малкия.
 Пример:
 Вход.
 2
 5
 12 4 22 31 32
 8
 22 33 44 11 55 66 88 99
 Изход.
 22 
 44
 
 */
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
   	set<string, classcomp> sett;
	string s;
	for (int i=0; i < n; i++)
	{
		cin >> s;
		sett.insert(s);
//		if (sett.size() > MAX) sett.erase(--sett.end());
	}
	vector<string> v;
	for (set<string, classcomp>::iterator it = sett.begin(); it != sett.end(); ++it) v.push_back(*it);
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