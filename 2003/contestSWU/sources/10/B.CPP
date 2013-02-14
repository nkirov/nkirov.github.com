#include <iostream>
using namespace std;

unsigned __int64 x, y, z;

int minCut(unsigned __int64 x)
{
	//printf("%I64d", x);
	int ans = 0;

	while (x >= 2)
	{
		x = x / 2 + x % 2;
		ans++;
	}
	return ans;
}

void main() {

	while (true)
	{
		scanf("%I64u", &x);
		if (x == 0)
			break;
		scanf("%I64u", &y);
		scanf("%I64u", &z);
		int ans = minCut(x) + minCut(y) + minCut(z);
		printf("%d\n", ans);
	}
}