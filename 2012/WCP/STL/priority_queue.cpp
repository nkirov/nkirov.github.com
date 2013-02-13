#include "stdio.h"
#include <queue>
#include <vector>
using namespace std;

struct cmp 
{
	bool operator() (const int &a, const int &b) const {
		return a > b;
	}
};

int main()
{
	priority_queue<int, vector<int>, cmp> a;
	a.push(3);
	a.push(5);
	a.push(1);
	while (!a.empty()) 
	{
		printf("%d\n", a.top());
		a.pop();		
	}
	return 0;
}
