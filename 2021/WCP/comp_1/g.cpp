
// Н. Киров
#include <iostream>
#include <string>
using namespace std;

int main()
{
    int n, len, cap, dig, spec;
     int len0 = 0, cap0 = 0, dig0 = 0, spec0 = 0;
    while(cin >> len >> cap >> dig >> spec >> n)
    {
        string ch;
        getline(cin, ch);
    
        for(int i=0; i<n; i++)
        {
            string s;
            getline(cin, s); // cout << s << endl;
            bool spac = false;
            int len0 = 0, cap0 = 0, dig0 = 0, spec0 = 0;
            for(int j = 0; j < s.length(); j++)
            {
                if (s[j] == ' ') spac = true;
                else if(s[j] >= 'A' and s[j] <= 'Z') cap0++;
                else if(s[j] >= '0' and s[j] <= '9') dig0++;
                else if(!(s[j] >= 'a' and s[j] <= 'z'))
                    spec0++;
            }
            if (s.length() >= len && cap0 >= cap && dig0 >= dig && spec0 >= spec && !spac)
            cout << "yes" << endl;
            else cout << "no" << endl;
        }
    }
    return 0;
}
