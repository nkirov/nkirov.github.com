// Решение на Станислав Иванов
// https://www.hackerrank.com/contests/nbu-february-2016-programming-contest/leaderboard
#include <bits/stdc++.h>
#define ll long long
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie();
    //
    // freopen("a.txt", "r", stdin);
    int TC;
    cin >> TC;
    while(TC--){
        string s1,s2;
        cin >> s1 >> s2;
        ll arr1[26] = {0};
        ll arr2[26] = {0};
        for(int i=1; i<s1.size(); ++i){
            arr1[s1[i]-'a']++;
        }
        for(int i=0; i<s2.size()-1; ++i){
            arr2[s2[i]-'a' ]++;
        }
        ll all = (ll)s1.size()*s2.size();
        for(int i=0; i<26; ++i){
            all-= arr1[i]*arr2[i];
        }
        cout << all << endl;
    }
    return 0;
}
