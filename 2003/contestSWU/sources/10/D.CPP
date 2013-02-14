#include <iostream>
#include <math.h>

using namespace std;

const int MAXN = 20001;

struct point {
	int x, y;
};

int n, ans;
point a[MAXN];

void Input() {
	for (int i = 0; i < n; i++) {
		cin >> a[i].x >> a[i].y;
	}
	a[n] = a[0];
}

int NOD(int x, int y) {
	int z;

	if (x == 0) return y;

	while (y > 0) {
		z = x;
		x = y;
		y = z % y;
	}
	return x;
}

double Area() {
	int i, dx, dy;
	double s = 0;

	for (i = 0; i < n; i++) {
		dx = double(a[i].x - a[i+1].x);
		dy = double(a[i].y + a[i+1].y);
		s += dx * dy;
	}

	s /= 2;
	return fabs(s);
}

void Solve() {
	double s, pinner, pbound;
	int i, difx, dify, tmp;

	s = Area();
	pbound = 0;

	for (i = 0; i < n; i++) {
		difx = fabs(a[i].x - a[i+1].x);
		dify = fabs(a[i].y - a[i+1].y);
		tmp = NOD(difx,dify);
		pbound += tmp;
	}

	pinner = s - (pbound / 2) + 1;

	ans = int(pinner + pbound + 0.5); //0.5 for round
}

int main() {
	cin >> n;
	while (n > 0) {
		Input();
		Solve();
		cout << ans << "\n";
		cin >> n;
	}

	return 0;
}