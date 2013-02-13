#include <iostream>
#include <string>
#include <vector>
using namespace std;

int main()
{
    int a;
    cin >> a;
    for (int i=1; i<=a; i++)
    {   int num_let;
        cin >> num_let;
        string S;
        getline(cin, S);
        string result = S.substr(1, num_let);
        int index = 0;
        S = S.substr(1, num_let) + S.substr(1, num_let);
        for (int j = 1; j<num_let; j++)
        {  string SS = S.substr(j, num_let);
           if (SS < result)
           {   result = SS;
               index = j;
           }
        }
        cout << index << endl;
    }
    system("PAUSE");
    return 0;
}
