#include "stdio.h"
#include <stack>
#include <vector>
using namespace std;

#define N 1000000

vector < vector < pair<int, float> > > Graph(N);

void dfs()
{
	vector<bool> viz(N);
	viz[0] = true;
	stack < pair <int, int> > dfs;
	dfs.push(make_pair(0, 0));
	while (!dfs.empty())
	{
		const pair <int, int> top = dfs.top();
		dfs.pop();
		const int vertex = top.first;
		const int next = top.second;
		if (!next)
			printf("Coming into vertex %d\n", vertex);
		if (next < (int)Graph[vertex].size())
		{
			dfs.push(make_pair(vertex, next + 1));
			const int toVisit = Graph[vertex][next].first;
			if (!viz[ toVisit ])
			{
				viz [ toVisit ] = true;
				dfs.push(make_pair(toVisit,0));
			}
		}
	}
}

void read()
{
	int from, to;
	float cost;
	for (int i = 0; i < M; i++)
	{
		scanf("%d %d %f\n", &from, &to, &cost);
		Graph[from].push_back(make_pair(to, cost));
	}
}

int main()
{
	read();
	dfs();
	return 0;
}