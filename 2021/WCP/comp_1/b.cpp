
// Н. Киров
#include <iostream>
#include <string>
#include <cctype>
using namespace std;

int main()
{
    int n; cin >> n;
    int al[30];
    string s;
    getline(cin, s);
   while(n-- and getline(cin, s))
    {
        for(int i = 0; i < 30; i++) al[i] = 0;
        for(int i = 0; i < s.length(); i++)
        {
            s[i] = char(tolower(int(s[i])));
            if (s[i] >= 'a' and s[i] <= 'z') al[s[i] - 'a']++;
        }
        string r;
        for(int i = 0; i < 26; i++)
            if (al[i] == 0) r += char(i + 'a');
        if (r.length() == 0) cout << "pangram" << endl;
        else cout << "missing " << r << endl;
    }
    return 0;
}
