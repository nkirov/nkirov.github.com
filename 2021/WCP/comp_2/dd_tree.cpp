/*
 NBU November 2020 Programming Contest
 
 D. Странни селца
 
*/
// autor: peter_pmg
#include <iostream>
#include <algorithm>
using namespace std;

int total;
int a[10000];

void recurse(int u) {
    if (u > total) return;
    recurse(2*u);
    cin >> a[u];
    recurse(2*u+1);
}

void solve() {
    int k; cin >> k;
    total = (1<<k) - 1;
    recurse(1);
    for (int i = 2; i <= total+1; i++) {
        cout << a[i-1];
        if (i&(i-1)) cout << " ";
        else cout << endl;
    }
}

int main() {
    int t; cin >> t;
    while (t--) solve();
    return 0;
}

