#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <string>
#include <cstring>
#include <cmath>
#include <cctype>
#include <algorithm>
#include <sstream>
#include <iomanip>

#include <vector>
#include <map>
#include <set>
#include <queue>
#include <stack>
#include <bitset>
#include <iterator>

using namespace std;

typedef pair<int, int> ii;
typedef vector<int> vi;
typedef vector<ii> vii;

#define INF 1e9
#define INFDOUBLE 1.79769e+308
#define EPS 1e-9
#define ll long long
#define ull unsigned long long

struct point
{
    double x, y;
    point()
    {
        x = y = 0.0;
    }
    point(double _x, double _y) : x(_x), y(_y) {}
};

double hypot(double a, double b)
{
    return sqrt(a*a + b*b);
}

double dist(point p1, point p2)
{
    return hypot(p1.x - p2.x, p1.y - p2.y);
}

struct line{double a, b, c; };

void pointsToLine(point p1, point p2, line &l)
{
    if(fabs(p1.x - p2.x) < EPS)
    {
        l.a = 1.0;
        l.b = 0.0;
        l.c = -p1.x;
    }
    else
    {
        l.a = -(double)(p1.y - p2.y) / (p1.x -p2.x);
        l.b = 1.0;
        l.c = -(double)(l.a * p1.x) - p1.y;
    }
}

struct vec
{
    double x, y;
    vec(double _x, double _y) : x(_x), y(_y) {}
};

vec toVec(point a, point b)
{
    return vec(b.x-a.x, b.y-a.y);
}

vec scale(vec v, double s)
{
    return vec(v.x * s, v.y * s);
}

point translate(point p, vec v)
{
    return point(p.x + v.x, p.y + v.y);
}

double dot(vec a, vec b)
{
    return (a.x * b.x + a.y * b.y);
}

double norm_sq(vec v)
{
    return (v.x * v.x + v.y * v.y);
}

double distToLine(point p, point a, point b, point &c)
{
    vec ap = toVec(a,p), ab = toVec(a,b);
    double u = dot(ap, ab) / norm_sq(ab);
    c = translate(a, scale(ab,u));
    return dist(p,c);
}

double distToLineSegment(point p, point a, point b, point &c)
{
    vec ap = toVec(a,p), ab = toVec(a,b);
    double u = dot(ap,ab)/norm_sq(ab);
    if(u < 0.0)
    {
        c = point(a.x, a.y);
        return dist(p,a);
    }
    if(u > 1.0)
    {
        c = point(b.x, b.y);
        return dist(p,b);
    }
    return distToLine(p, a,b,c);
}

int main()
{
    double xm, ym, xa, ya, xb, yb, d, dis;
    int n;
    point c, resP;
    while(cin >> xm >> ym)
    {
        dis = INFDOUBLE;
        point m(xm, ym);
        cin >> n;
        cin >> xa >> ya;
        point a(xa, ya);
        for(int i = 0; i < n; i++)
        {
            cin >> xb >> yb;
            point b(xb, yb);
            d = distToLineSegment(m, a, b, c);
            if(d < dis)
            {
                resP.x = c.x;
                resP.y = c.y;
                dis = d;
            }
            a.x = b.x;
            a.y = b.y;
        }
        cout << fixed << setprecision(4) << resP.x << endl << resP.y << endl;
    }
    return 0;
}
