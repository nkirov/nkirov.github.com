#include <cstdio>

using namespace std;

int obj[10], next[10];
int first = -1;
int cnt = 0;


void insert(int index, int value)
{
	if (cnt == 0)
	{
		first = 0;
		obj[0] = value;
		next[0] = -1;
		cnt = 1;
		return;
	}
	int i = first;
	int prev = -1;
	int ind;
	for (ind = 0; i != -1 && ind < index; prev = i, i = next[i], ind++);
	if (ind == 0)
	{
		first = cnt;
	}
	obj[cnt] = value;
	next[cnt] = i;
	if (prev != -1)
	{
		next[prev] = cnt;
	}
	cnt++;
}

int main()
{
	insert(0, 10);
	insert(0, 20);
	insert(0, 8);
	insert(3, 2);
	insert(0, 3);
	insert(0, 1);
	insert(9, 4);
	for (int i = first; i != -1; i = next[i])
	{
		printf("%d ", obj[i]);
	}
	int i;
	scanf("%d", &i);
	return 0;
}