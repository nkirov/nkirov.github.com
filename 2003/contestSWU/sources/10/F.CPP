#include <iostream>
#include <cstdio>
using namespace std;

typedef unsigned __int64 hyper;
const int MAX2 = 64;

bool anspossible;
hyper step[MAX2], ans;
int pos[MAX2], n;

void Precompute() {
	step[0] = 1;
	for (int i = 1; i < MAX2; i++) 
		step[i] = 2 * step[i-1];
}

void Input() {
	cin >> n;
	for (int i = 1; i <= n; i++)
		cin >> pos[i];
}

void Find(int n, int sour, int dest, int free) {
	if (n == 1) {
		if (pos[1] == sour) {}
		else if (pos[1] == dest) ans += 1;
		else {
			ans = 0;
			anspossible = false;
		}

		return;
	}

	if (pos[n] == sour) {
		Find(n - 1, sour, free, dest);
	}
	else if (pos[n] == dest) {
		ans += step[n-1]; //2^(n-1)-1 to move n-1 disk, + 1 for Nth disk
		Find(n - 1, free, dest, sour);
	}
	else { //N-th disk is on free - IMPOSSIBLE
		ans = 0;
		anspossible = false;
	}
}

void Solve() {
	ans = 0;
	anspossible = true;
	Find(n, 1, 2, 3);
}


int main() {
	Precompute();

	int count, tests;

	cin >> tests;
	for (count = 0; count < tests; count++) {
		Input();

		Solve();

		if (anspossible)
			printf("%I64u\n", ans);
		else
			printf("-1\n");
	}

	return 0;
}
