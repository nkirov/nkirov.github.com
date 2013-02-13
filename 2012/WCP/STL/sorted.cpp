#include <algorithm>
#include <vector>
using namespace std;

bool mygreater (int i,int j) { return (i > j); }

int main()
{
	int myints[] = {10,20,30,30,20,10,10,20};
	vector<int> v(myints,myints+8);           // 10 20 30 30 20 10 10 20
	vector<int>::iterator low,up;

	sort (v.begin(), v.end());                // 10 10 10 20 20 20 30 30

	//Returns an iterator pointing to the first element in the sorted range
	//[first,last) which does not compare less than value
	low = lower_bound (v.begin(), v.end(), 20); 

	//Returns an iterator pointing to the first element in the sorted range
	//[first,last) which compares greater than value
	up = upper_bound (v.begin(), v.end(), 20); 
	// 10 10 10 20 20 20 30 30
	//          ^         ^
	//		   low		 up
	printf("lower_bound at position %d\n", low - v.begin()); // 3
	printf("upper_bound at position %d\n", up - v.begin());  // 6

	//Returns true if an element in the range [first,last) is equivalent 
	//to value, and false otherwise.
	bool found = binary_search(v.begin(), v.end(), 33); //false

	pair<vector<int>::iterator, vector<int>::iterator> bounds;
	bounds = equal_range (v.begin(), v.end(), 20);
	// 10 10 10 20 20 20 30 30
	//          ^        ^
	printf("bounds at positions %d and %d\n",  
		bounds.first - v.begin() ,
		bounds.second - v.begin());

	// using "mygreater" as comp:
	sort (v.begin(), v.end(), mygreater);                  
	bounds=equal_range (v.begin(), v.end(), 20, mygreater); 
	// 30 30 20 20 20 10 10 10
	//       ^        ^
	printf("bounds at positions %d and %d\n",  
		bounds.first - v.begin() ,
		bounds.second - v.begin());
	return 0;
}