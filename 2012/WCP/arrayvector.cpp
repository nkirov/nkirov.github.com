#include <cstdio>
#include <algorithm>
#include <vector>

using namespace std;

bool compare(int i, int j)
{
	return i < j;
}

int main()
{
	int arr[] = { 10, 23, 34, 5, 34, 12, 3, 4, 5, 7};
	vector<int> v(arr, arr + 10);
	sort(arr, arr + 10, compare);
	sort(v.begin(), v.end());
	
	for (int i = 0; i < 10; i++)
	{
		printf("%d\n", arr[i]);
	}
	printf("\n");
	
	v.insert(v.begin() + 4, 70);
	for (int i = 0; i < 10; i++)
	{
		printf("%d\n", v[i]);
	}
	printf("\n");

	bool b = binary_search(arr, arr + 10, 23);
	if (b)
	{
		printf("Found!\n");
	}
	else
	{
		printf("Not found!\n");
	}
	system("PAUSE");
}