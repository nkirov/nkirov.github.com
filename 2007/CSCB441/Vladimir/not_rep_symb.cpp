#include <iostream>
#include <string>
#include <vector>
using namespace std;

vector<string> symbols;
vector<int> instances;

bool check(string a)
{
     for (int i=0; i<symbols.size(); i++)
     {    if (a == symbols[i])
          {  instances[i] = instances[i] + 1;
             return true;
          }
     }
     return false;
}
     
int main()
{
    string s;
    cin >> s;
    for (int i=0; i<s.length(); i++)
    {   string a = s.substr(i, 1);
        bool repeat = check(a);
        if (repeat == false)
        {   symbols.push_back(a);
            instances.push_back(1);
        }
    }
    int j;
    for (j=0; j<instances.size(); j++)
    {    if (instances[j] == 1)
            break;
    }
    cout << symbols[j] << endl;
    system("PAUSE");
    return 0;
}

           
        
