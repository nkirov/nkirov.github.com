#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define MAXB 1010
#define MAXN 32
#define MAXS 110


int N;
char s[MAXN][MAXS];
int b[MAXB][MAXN];
int pos[MAXB];
int pts[MAXN];

int nleft;
int nb;
int elim[MAXN];


int main(void)
{
	int i;
	int who, lowpts;

	scanf("%d", &N);
	fgets(s[0], sizeof(s[0]), stdin);
	for (i = 0; i < N; i++) {
		fgets(s[i], sizeof(s[i]), stdin);
	}
	nleft = N;
	for (nb = 0;; nb++) {
		for (i = 0; i < N; i++) {
			if (scanf("%d", &b[nb][i]) != 1)  break;
			b[nb][i]--;
		}
		if (i < N)  break;
	}

	for (;;) {
		memset(pts, 0, sizeof(pts));
		for (i = 0; i < nb; i++) {
			who = b[i][pos[i]];
			pts[who]++;
		}
		lowpts = nb+1;
		for (i = 0; i < N; i++) {
			if (pts[i] > nb/2) {
				printf("%s", s[i]);
				exit(0);
			}
		}
		for (i = 0; i < N; i++) {
			if (elim[i])  continue;
			if (pts[i] < lowpts && pts[i] > 0)  lowpts = pts[i];
		}
		for (i = 0; i < N; i++) {
			if (elim[i])  continue;
			if (pts[i] > lowpts)  break;
		}
		if (i >= N) {
			for (i = 0; i < N; i++) {
				if (elim[i])  continue;
				if (pts[i] == lowpts) {
					printf("%s", s[i]);
				}
			}
			exit(0);
		}
		for (i = 0; i < N; i++) {
			if (elim[i])  continue;
			if (pts[i] == lowpts) {
				elim[i] = 1;
				nleft--;
			}
		}
		for (i = 0; i < nb; i++) {
			while (pos[i] < N) {
				who = b[i][pos[i]];
				if (elim[who])  pos[i]++;
				else  break;
			}
		}
	}
	return 0;
}
