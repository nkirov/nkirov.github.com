#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include <set>
#include <bitset>
using namespace std;

typedef unsigned u;
typedef unsigned long ul;
typedef unsigned long long ull;

int hamming_distance(ul x, ul y)
{
 //   return __builtin_popcount(x ^ y);
   bitset<64> bs(x^y);
   return bs.count();
}

ul a, b, x;

int dist[100][100];

vector<ul> elem;
ul k;

void print2()
{
    cout << "    ";
    for (int j = 0; j < elem.size(); j++) cout << elem[j] << " ";
    cout << endl;
    for (int i=0; i < elem.size(); i++)
    {
        cout << elem[i] << " | ";
        for (int j = 0; j < elem.size(); j++) cout << dist[i][j] << " ";
        cout << endl;
    }
}

void a2()
{   string s;
    while(getline(cin, s))
    {
        for (int i=0; i < 100; i++)
            for (int j = 0; j < 100; j++) dist[i][j] = 0;
        elem.clear();
        istringstream is(s);
        while (is >> k) elem.push_back(k);
        
        ul maxx = 0, minn = 100;
        for(ul i = 0; i < elem.size(); i++)
            for(ul j = i + 1; j < elem.size(); j++)
            {
                x = hamming_distance(elem[i], elem[j]);
                dist[i][j] = dist[j][i] = x;
                if (x > maxx) maxx = x;
                if (x < minn) minn = x;
            }
        cout << minn << " " << maxx << endl;
//        print2();
    }
}

void check()
{
    for(int i = 0; i < 64; i++)
        cout << i << " " << (1L<<i) << " " <<
        hamming_distance(0L, (1L<<i)-1) << endl;
}

int main()
{
//    cout << sizeof(u) << " " << sizeof(ul) << " " << sizeof(ull) << endl;
//    ul u = 0L;
//    cout << ~u << endl;
    a2();
 //   check();
}
