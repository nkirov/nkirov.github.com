// rotor

#include <iostream>
#include <string>
using namespace std;

bool is_palindrome(string s)
{
    if (s == "" || s.length() == 1) return true;
    if (s[0] != s[s.length() - 1]) return false;
    return is_palindrome(s.substr(1, s.length() -2));
}

int main()
{
    string s;
    cin >> s;
    cout << is_palindrome(s) << endl;
    return 0;
}
