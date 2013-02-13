#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main()
{
    int n;
    while (cin >> n && n != 0)
    {    vector<string> v;
         int record = 1;
         for (int i=0; i<n; i++)
         {  string s;
            cin >> s;
            v.push_back(s);
         }
         int repetition = 1;
         for (int i=0; i<n-1; i++)
         {  if (v[i] == v[i+1])
            {   repetition++;
                if (repetition > record)
                   record = repetition;
            }
            else repetition = 1;
         }
         
         cout << record << endl;
    }
    system("PAUSE");
    return 0;
}
