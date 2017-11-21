/*
ID: espr1t
LANG: C++
TASK: Bazinga
KEYWORDS: Easy, Arrays, Counting
*/

#include <cstdio>
#include <algorithm>

#define MAX 1024
FILE* in; FILE* out;

int main(void)
{
	in = stdin; out = stdout;
//	in = fopen("Bazinga.in", "rt"); out = fopen("Bazinga.out", "wt");
	
	int numTests;
	fscanf(in, "%d", &numTests);

	char buff[MAX];
	fgets(buff, MAX, in);
	
	for (int test = 0; test < numTests; test++)
	{
		fgets(buff, MAX, in);
		int cnt[128], idx = 0;
		for (int i = 0; i < 128; i++)
			cnt[i] = 0;
		while (idx < MAX && buff[idx] != 0)
			cnt[(int)buff[idx++]]++;
		
		int ans = MAX;
		ans = std::min(ans, (cnt['b'] + cnt['B']) / 1);
		ans = std::min(ans, (cnt['a'] + cnt['A']) / 2);
		ans = std::min(ans, (cnt['z'] + cnt['Z']) / 1);
		ans = std::min(ans, (cnt['i'] + cnt['I']) / 1);
		ans = std::min(ans, (cnt['n'] + cnt['N']) / 1);
		ans = std::min(ans, (cnt['g'] + cnt['G']) / 1);
		fprintf(out, "%d\n", ans);
	}
	return 0;
}
