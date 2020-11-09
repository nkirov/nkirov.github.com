
// Н. Киров
#include <iostream>
#include <set>
using namespace std;

set<int> s;

void solve(int x)
{
    set<int>::iterator it = s.lower_bound(x);
if (it == s.begin()) {
    cout << *it << " ";
    } else if (it == s.end()) {
        it--;
        cout << *it << " ";
    } else {
        int a = *it; it--;
        int b = *it;
        if (x-b < a-x) cout << b << " ";
        else cout << a << " ";
    }
}

int main()
{
    int n, m;
   while(cin >> n >> m)
   {
       s.clear();
       for(int i = 0; i < n; i++)
       {
           int k;
           cin >> k;
           s.insert(k);
       }
       for(int i = 0; i < m; i++)
       {
           int x;
           cin >> x;
           solve(x);
       }
       cout << endl;
   }
    return 0;
}
