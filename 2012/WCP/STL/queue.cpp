#include "stdio.h"
#include <queue>
#include <vector>
using namespace std;

#define N 1000000

vector < vector < pair<int, float> > > Graph(N);

void bfs()
{
	vector<bool> viz(N);
	viz[0] = true;
	queue <int> bfs;
	bfs.push(0);
	while (!bfs.empty())
	{
		const int vertex = bfs.front();
		printf("Coming into vertex %d\n", vertex);
		bfs.pop();
		for (int i = 0; i < (int)Graph[vertex].size(); i++)
		{
			const int toVisit = Graph[vertex][i].first;
			if (!viz[toVisit])
			{
				viz[toVisit] = true;
				bfs.push(toVisit);
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
	bfs();
	return 0;
}