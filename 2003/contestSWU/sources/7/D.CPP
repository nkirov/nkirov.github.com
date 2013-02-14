#include <stdio.h>
#include <stdlib.h>


#define MAXN 10100


int N;
int p[MAXN][2];
double P;
double n, m;
double S;


int gcd(int a, int b)
{
	if (b == 0)  return a;
	return gcd(b, a%b);
}


int main(void)
{
	int i, x, y, t;

	while (scanf("%d", &N) == 1 && N > 0) {
		for (i = 0; i < N; i++) {
			scanf("%d %d", &p[i][0], &p[i][1]);
		}
		p[N][0] = p[0][0];
		p[N][1] = p[0][1];
		P = n = m = 0;
		S = 0;
		for (i = 0; i < N; i++) {
			S += (p[i][0]-p[i+1][0])*(p[i][1]+p[i+1][1])/2.;
		}
		if (S < 0)  S = -S;

		m = N;
		for (i = 0; i < N; i++) {
			x = abs(p[i][0]-p[i+1][0]);
			y = abs(p[i][1]-p[i+1][1]);
			t = gcd(x, y);
			m += t-1;
		}

		n = S+1-m/2.;

		P = n+m;

		printf("%.0lf\n", P);
	}
	return 0;
}