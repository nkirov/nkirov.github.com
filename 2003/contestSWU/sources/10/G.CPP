#include <cassert>
#include <iostream>
#include <cmath>
using namespace std;

#define MAX 410

struct Point
{
	int x, y;
};

struct Rect
{
	Point p1, p2;
};

int n_size;
double minDist[MAX * 4];
int vis[MAX * 4];
Rect r[MAX];
int n;
int m;
int prev[MAX * 4];
Point p[MAX * 4];

void AddPoint(int x, int y)
{
	n++;
	p[n].x = x;
	p[n].y = y;
}

int leq(Point p1, Point p2, Point p)
{
	int res = (p1.y - p2.y) * p.x + 
			  (p2.x - p1.x) * p.y + 
			  (p1.x * p2.y - p1.y * p2.x);
	if (res == 0) return 0;
	if (res < 0) return -1;
	if (res > 0) return 1;
	assert(false);
}

/*bool KrisCross(double x1, double y1, double x2, double y2, 
			   double x3, double y3, double x4, double y4)
{


}*/

bool Cross(Point p1, Point p2, Point p3, Point p4)
{
	return (leq(p1, p2, p3) * leq(p1, p2, p4) < 0) &&
		   (leq(p3, p4, p1) * leq(p3, p4, p2) < 0);		 
		   
}

#define MAXVAL(a, b) ((a) > (b) ? (a) : (b))
#define MINVAL(a, b) ((a) < (b) ? (a) : (b))

bool LineCrossPoint(Point p1, Point p2, Point p)
{
	Point b1, b2;

	if (p1.x == p.x && p1.y == p.y) return false;
	if (p2.x == p.x && p2.y == p.y) return false;

	b1.x = MINVAL(p1.x, p2.x);
	b1.y = MINVAL(p1.y, p2.y);

	b2.x = MAXVAL(p1.x, p2.x);
	b2.y = MAXVAL(p1.y, p2.y);

	if (leq(p1, p2, p) == 0 && 
		(b1.x <= p.x && p.x <= b2.x) &&
		(b1.y <= p.y && p.y <= b2.y))
		return true;

	return false;
}

bool IsEdge(Point p1, Point p2)
{
	if (p1.x == 0 && p2.x == 0) return false;
	if (p1.x == n_size && p2.x == n_size) return false;

	if (p1.y == 0 && p2.y == 0) return false;
	if (p1.y == n_size && p2.y == n_size) return false;
	/*
	// Case 1
	for (int i = 1; i <= n; i++)
	{
		if (LineCrossPoint(p1, p2, p[i]))
		{
			return false;
		}
	}		
	
	// Case 2
	for (i = 0; i <= m; i++)
	{
		Point dp[4];

		dp[0] = r[i].p1;
		dp[2] = r[i].p2;

		dp[1].x = r[i].p2.x;
		dp[1].y = r[i].p1.y;
		dp[3].x = r[i].p1.x;
		dp[3].y = r[i].p2.y;

		for (int j = 0; j < 4; j++)
		{
			if (LineCrossPoint(dp[j], dp[(j + 1) % 4], p1))
			{
				return false;
			}
			if (LineCrossPoint(dp[j], dp[(j + 1) % 4], p2))
			{
				return false;
			}
		}
	}
*/
	for (int i = 0; i < m; i++)
	{
		Point d1, d2;

		// diagonals
		d1.x = r[i].p1.x;
		d1.y = r[i].p1.y;
		d2.x = r[i].p2.x;
		d2.y = r[i].p2.y;

		if (Cross(p1, p2, d1, d2))
			return false;

		d1.x = r[i].p2.x;
		d1.y = r[i].p1.y;
		d2.x = r[i].p1.x;
		d2.y = r[i].p2.y;

		if (Cross(p1, p2, d1, d2))
			return false;
	}

	return true;
}

double Dist(Point p1, Point p2)
{
	double divx = p1.x - p2.x;
	double divy = p1.y - p2.y;
	return sqrt(divx * divx + divy * divy);
}

double Dist(double x1, double y1, double x2, double y2)
{
	return sqrt((x1 - x2) * (x1 - x2) + 
				(y1 - y2) * (y1 - y2));
}

void Dijkstra(int s)
{
	for (int i = 1; i <= n; i++)
	{
		minDist[i] = 1000000000.0;
		vis[i] = 0;
		prev[i] = 0;
	}

	minDist[s] = 0.0;

	do
	{
		double mind = 1000000010.0;
		int w = -1;
		for (i = 1; i <= n; i++)
			if (minDist[i] < mind && !vis[i])
			{
				mind = minDist[i];
				w = i;
			}
		if (w == -1) break;
		vis[w] = 1;
		for (i = 1; i <= n; i++) if (w != i)
			if (IsEdge(p[w], p[i]))
			{
				if (minDist[i] > minDist[w] + Dist(p[w], p[i]))
				{
					minDist[i] = minDist[w] + Dist(p[w], p[i]);
					prev[i] = w;
				}
			}
	}
	while (true);
}

void main()
{
	int tests;



	///////////////////
	cin >> tests;

	while (tests--)
	{
		cin >> n_size >> m;

		// null graph
		n = 0;
		AddPoint(0, 0);
		AddPoint(0, n_size);
		AddPoint(n_size, 0);
		for (int i = 0; i < m; i++)
		{
			cin >> r[i].p1.x >> r[i].p1.y;
			cin >> r[i].p2.x >> r[i].p2.y;
			AddPoint(r[i].p1.x, r[i].p1.y);
			AddPoint(r[i].p1.x, r[i].p2.y);
			AddPoint(r[i].p2.x, r[i].p1.y);
			AddPoint(r[i].p2.x, r[i].p2.y);
		}
		r[m].p1.x = 0; r[m].p1.y = 0;
		r[m].p1.x = n_size; r[m].p1.y = n_size;

		AddPoint(n_size, n_size);

		Dijkstra(1);
		printf("%.4lf\n", minDist[n]);
	}
}