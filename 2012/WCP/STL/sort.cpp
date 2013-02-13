#include <stdio.h>
#include <algorithm>
#include <vector>
using namespace std;

bool cmp(const int &a, const int &b) { return a > b; }

bool cmpVector(const pair<int, double> a, const pair<int, double> b) 
{
	return a.second != b.second ? 
		a.second - b.second < 0:
		a.first - b.first < 0;
}

int a[5] = { 4, 2, 4, 1, 5 };
vector< pair <int, double > > v;

void printArray()
{
	for(int i = 0;i < 5;i++)
		printf("%d ", a[i]);
	printf("\n");
}

void printVector()
{
	vector< pair <int, double > > :: iterator it;
	for(it = v.begin(); it != v.end(); it++)
		printf("%d %.7f\n", it->first, it->second);
	printf("\n");
}

int main()
{
	printArray(); // 4 2 4 1 5

	sort(a, a + 5);
	printArray(); // 1 2 4 4 5
	
	sort(a, a + 5, cmp); 
	printArray(); // 5 4 4 2 1
	printf("\n");

	v.push_back(make_pair(3, 0.000001));
	v.push_back(make_pair(2, 3.1415));
	v.push_back(make_pair(1, 2.1));
	v.push_back(make_pair(1, 1.2));
	v.push_back(make_pair(2, 4.9999999));
	v.push_back(make_pair(2, 5));
	printVector();

	sort(v.begin(), v.end());
	printVector();

	//1 1.2000000
	//1 2.1000000
	//2 3.1415000
	//2 4.9999999
	//2 5.0000000
	//3 0.0000010

	sort(v.begin(), v.end(), cmpVector);
	printVector();

	//3 0.0000010
	//1 1.2000000
	//1 2.1000000
	//2 3.1415000
	//2 4.9999999
	//2 5.0000000

	return 0;
}
