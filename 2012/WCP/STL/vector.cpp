#include <stdio.h>
#include <vector>
using namespace std;

vector<int> a (10, -1); // 10 ints with value -1
vector<int> b (20); // 20 ints

void print()
{
	for(int i = 0;i < (int)a.size();i++)
		printf("%d ", a[i]);
	printf("\n");
}

int main()
{
	for(int i = 0;i < 20;i++)
		b[i] = i;

	print(); // -1 -1 -1 -1 -1 -1 -1 -1 -1 -1

	//~~~~ ASSIGN ~~~
	//Assigns new content to the vector object, dropping all the elements 
	//contained in the vector before the call and replacing them by those 
	//specified by the parameters:
	a.assign (5, 0);  // a repetition 5 times of value 0
	print(); // 0 0 0 0 0

	int arr[] = {1, 2, 3, 4, 5, 6, 7};
	a.assign (arr + 3, arr + 6);// assigning from array.
	print(); // 4 5 6

	a.assign (b.begin() + 5, b.end() - 10);// assigning from other vector.
	print(); // 5 6 7 8 9

	//~~~~ BACK ~~~
	//A reference to the last element in the vector.
	while (a.back() != 0)
	{
		a.push_back(a.back() -1);
	}
	print(); //5 6 7 8 9 8 7 6 5 4 3 2 1 0

	//~~~~ BEGIN ~~~
	//Returns an iterator referring to the first element in the vector.
	vector<int>::iterator begin = a.begin();
	printf("%d\n", *begin); // 5

	//~~~~ END ~~~
	//Returns an iterator referring to the past-the-end element in the vector.
	for(; begin < a.end(); begin++)
		printf("%d ", *begin); //5 6 7 8 9 8 7 6 5 4 3 2 1 0

	//~~~~ CAPACITY ~~~
	//Return size of allocated storage capacity
	printf("\ncapacity: %d\n", a.capacity());

	//~~~~ CLEAR ~~~
	//Clear content
	//All the elements of the vector are dropped: their destructors are 
	//called, and then they are removed from the vector container, 
	//leaving the container with a size of 0.
	a.clear();
	print(); //

	//~~~~ EMPTY ~~~
	//Returns whether the vector container is empty, i.e. whether its size is 0.
	printf(a.empty() ? "Empty.\n" : "Not empty\n"); //Empty

	for(int i = 0;i < 10;i++)
		a.push_back(i + 1);
	print(); // 1 2 3 4 5 6 7 8 9 10

	//~~~~ ERASE ~~~
	//Removes from the vector container either a single element (position) or a 
	//range of elements ([first,last)).

	// erase the 6th element
	a.erase (a.begin() + 5);
	print(); // 1 2 3 4 5 7 8 9 10

	// erase the first 3 elements:
	a.erase (a.begin(), a.begin() + 3);
	print(); // 4 5 7 8 9 10

	//~~~~ FRONT ~~~
	//Returns a reference to the first element in the vector container.
	a.front() -= a.back();
	printf("%d\n", a.front()); // -6

	//~~~~ INSERT ~~~
	//Extendin vector by inserting new elements before the element at position
	a.insert(a.begin() + 2, 44);
	print(); // -6 5 44 7 8 9 10

	//~~~~ MAX SIZE ~~~
	//Returns the maximum number of elements that the vector container can hold
	printf("%d\n", a.max_size()); //1073741823
	
	//~~~~ POP_BACK ~~~
	//Removes the last element in the vector, effectively reducing the 
	//vector size by one and invalidating all iterators and references to it.
	a.pop_back();
	a.pop_back();
	print(); // -6 5 44 7 8

	//~~~~ PUSH_BACK ~~~
	//Adds a new element at the end of the vector, after its current last 
	//element. The content of this new element is initialized to a copy of x.
	a.push_back(-3);
	print(); // -6 5 44 7 8 -3


	return 0;
}