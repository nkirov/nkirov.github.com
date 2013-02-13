#include <stdio.h>
#include <queue>
using namespace std;

#define MAX 100
#define MP(x, y) make_pair((x), (y))

int E, V, dist[MAX], parent[MAX];
bool vis[MAX];
vector < pair <int,int > > edges[MAX];

void printPath(int s, int j)
{
	if (parent[j] != s) 
			printPath(s, parent[j]);
		printf("%d ", j + 1);
}

void printResult(int s)
{
	for (int i = 0; i < V; i++)
	{
		if (dist[i] != INT_MAX && i != s) 
		{
			printf("%d -> %d (%d): ", s + 1, i + 1, dist[i]);
			printf("%d ", s + 1);
			printPath(s, i);
			printf("\n");
		}
	}
}

void read()
{
	int u, v, c;
	scanf("%d %d", &V, &E);
	for(int i = 0;i < E;i++)
	{
		scanf("%d %d %d", &u, &v, &c); 
		u--; v--;

		edges[u].push_back(MP(v, c));
		//edges[v].push_back(MP(u, c)); //if the graph is b-directional
	}
}

void dijkstra(int s)
{
	int i, u, v, w;
	dist[s] = 0;
	parent[s] = -1;
	priority_queue<pair<int,int> > pq;
	pq.push(MP(-dist[s], s));

	while (!pq.empty())
	{
		u = pq.top().second;
		pq.pop();
		if (vis[u])
			continue;

		vis[u] = true;
		for(i = 0; i < edges[u].size(); i++)
		{
			v = edges[u][i].first;
			w = edges[u][i].second;

			if (dist[u] + w < dist[v])
			{
				dist[v] = dist[u] + w;
				parent[v] = u;
				pq.push(MP(-dist[v], v));
			}
		}
	}
}

void init()
{
	for(int i = 0;i < V;i++)
	{
		dist[i] = INT_MAX;
		vis[i] = false;
	}
}

void main()
{
	int startV = 1;
	read();
	init();
	dijkstra(startV);
	printResult(startV);
} 
