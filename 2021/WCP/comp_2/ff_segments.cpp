/*
 NBU November 2020 Programming Contest

 F. Отсечки
 Дадени са N (1 ≤ N ≤ 50 000) отсечки, всяка с начало А и край В, 1 ≤ A ≤ B ≤ 1 000 000 000. Някои от отсечките може да се припокриват изцяло или частично, а други може да нямат общи точки. Търси се максималния брой отсечки, които имат обща точка. Нека са дадени интервалите 3..5, 4..8, 1..2, и 5..10. Точка 5 е търсената, тъй като тя е обща точка за 3 интервала.
 
 1.png
 
 Input Format
 Първия ред на стандартния вход съдържа броя на тестовите примери. Първия ред на всеки от тях съдържа броя на отсечките N. Следват N реда с по две цели числа Ai Bi – начало и край на поредната отсечка.
 
 Output Format
 Отговора за всеки тест извеждайте на отделен ред на стандартния изход.
 
 Sample Input
 1
 4
 3 5
 4 8
 1 2
 5 10
 Sample Output
 3

 */
// author: Stuno
#include <bits/stdc++.h>
#define ll long long
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie();
    int TC;
    cin >> TC;
    while(TC--){
        int n;
        cin >> n;
        map<int,int> m;
        while(n--){
            int x,y;
            cin >> x >> y;
            m[x]++;
            m[y+1]--;
        }
        ll curr = 0;
        ll max_curr = 0;
        for(map<int,int>::iterator it = m.begin(); it!=m.end(); ++it){
            //    cout << " ASD" << endl;
            curr+=it->second   ;
            //  cout << curr << " " << it->first << " " << it->second << endl;
            max_curr = max(max_curr, curr);
        }
        cout << max_curr << endl;
    }
    return 0;
}
/*
 Велислав, приоритетна опашка
 
 //Adopted from http://contest.usaco.org/TESTDATA/OCT10G.soda.htm
 //Soda machine
 
 #include <cstdio>
 #include <algorithm>
 #include <queue>
 using namespace std;
 
 const int MAXN = 50005;
 
 struct inter {
 int begin, end;
 
 inline bool operator < (const inter &o) const {
 return begin < o.begin;
 }
 };
 
 int N, t;
 inter vals [MAXN];
 
 int main ()
 {
 scanf ("%d", &t);
 
 while(t--)
 {
 scanf ("%d", &N);
 for (int i = 0; i < N; i++)
 scanf ("%d %d", &vals [i].begin, &vals [i].end);
 
 sort (vals, vals + N);
 
 priority_queue <int> pq;
 int best = 0;
 for (int i = 0; i < N; i++)
 {
 pq.push (-vals [i].end);
 
 while (-pq.top () < vals [i].begin)
 pq.pop ();
 
 if ((int) pq.size () > best)
 best = (int) pq.size ();
 }
 
 printf ("%d\n", best);
 }
 
 return 0;
 }
 
 */
/*
Велислав, сортиране
 
 //Adopted from http://contest.usaco.org/TESTDATA/OCT10G.soda.htm
 //Soda machine
 
 #include <cstdio>
 #include <algorithm>
 #include <queue>
 using namespace std;
 const int MAXP = 100005;
 
 struct point {
 int pos, val;
 inline bool operator < (const point &o) const {
 return (pos < o.pos) || (pos == o.pos && val > o.val);
 }
 }ranges[MAXP];
 
 int N, P, t;
 
 int main ()
 {
 scanf ("%d", &t);
 while(t--)
 {
 scanf ("%d", &N);
 P = 2 * N;
 
 for (int i = 0; i < N; i++)
 {
 scanf ("%d %d", &ranges [2 * i].pos, &ranges [2 * i + 1].pos);
 ranges [2 * i].val = 1;
 ranges [2 * i + 1].val = -1;
 }
 
 sort (ranges, ranges + P);
 
 int best = 0;
 for (int i = 0, sum = 0; i < P; i++)
 {
 sum += ranges [i].val;
 
 if (sum > best)
 best = sum;
 }
 
 printf("%d\n", best);
 }
 }
 */
