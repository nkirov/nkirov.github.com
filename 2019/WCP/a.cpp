#include <iostream>
#include <vector>
#include <algorithm>
#include <sstream>
#include <string>

using namespace std;

int m, n, k, x, sum;
vector<int> v;

int main()
{
    string s;
    while(getline(cin, s))
    {
        v.clear();
        istringstream is(s);
        while(is >> k) v.push_back(k);
        sort(v.begin(), v.end());
        
        getline(cin, s);
        istringstream iis(s);
        while(iis >> x)
        {
            bool yes = false;
            int b = 0, e = v.size() - 1;
            do
            {
                sum = v[b] + v[e];
       //         cout << "sum=" << sum << endl;
                if (sum > x) e--;
                else if (sum < x) b++;
                else yes = true;
            }
            while(!yes && b < e);
            cout << (yes?"yes ":"no ");
        }
        cout << endl;
    }
    return 0;
}
