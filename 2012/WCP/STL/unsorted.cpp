#include <stdio.h>
#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

// a case-insensitive comparison function:
bool mycomp (char c1, char c2)
{ 
	return tolower(c1) < tolower(c2); 
}

bool mypredicate (int i, int j) 
{
	return (i == j);
}

int main()
{
	int myints[] = { 10, 20, 30 ,40 };
	int * p;

	//~~~ find ~~~~
	// pointer to array element:
	p = find(myints, myints + 4,30);
	++p;
	cout << "The element following 30 is " << *p << endl;
	//The element following 30 is 40

	vector<int> myvector (myints, myints+4);
	vector<int>::iterator it;

	// iterator to vector element:
	it = find (myvector.begin(), myvector.end(), 30);
	++it;
	cout << "The element following 30 is " << *it << endl;
	//The element following 30 is 40

	//~~~ count ~~~~
	myvector.push_back(20);
	cout << count(myvector.begin(), myvector.end(), 20) << endl; // 2

	//~~~ min/max element ~~~
	cout << *min_element(myvector.begin(), myvector.end()) << endl; // 10
	cout << *max_element(myvector.begin(), myvector.end()) << endl; // 40

	//~~~ lexicographical_compare ~~~
	char first[]="Apple";         // 5 letters
	char second[]="apartment";    // 9 letters

	//Using default comparison (operator<): 
	if (lexicographical_compare(first, first + 5, second, second + 9))
		cout << first << " is less than " << second << endl;
	else if (lexicographical_compare(second, second + 9, first, first + 5))
	    cout << first << " is greater than " << second << endl;
	else
		cout << first << " and " << second << " are equivalent\n";

	//Using mycomp as comparison object:
	if (lexicographical_compare(first, first + 5, second, second + 9, mycomp))
		cout << first << " is less than " << second << endl;
	else if (lexicographical_compare(second, second + 9, first, first + 5,mycomp))
		cout << first << " is greater than " << second << endl;
	else
		cout << first << " and " << second << " are equivalent\n";

	//~~~ mismatch ~~~
	myvector.clear();
	for (int i = 1; i < 6; i++)
		myvector.push_back (i*10); // myvector: 10 20 30 40 50
	int m[] = {10, 20, 80, 320, 1024};            //   myints: 10 20 80 320 1024
	pair<vector<int>::iterator,int*> mypair;
	// using default comparison:
	mypair = mismatch (myvector.begin(), myvector.end(), m);
	cout << "First mismatching elements: " << *mypair.first;
	cout << " and " << *mypair.second << endl;;

	mypair.first++; mypair.second++;

	// using predicate comparison:
	mypair = mismatch (mypair.first, myvector.end(), mypair.second, mypredicate);
	cout << "Second mismatching elements: " << *mypair.first;
	cout << " and " << *mypair.second << endl;

	return 0;
}
