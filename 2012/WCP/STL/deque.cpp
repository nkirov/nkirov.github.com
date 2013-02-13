#include <deque>
#include <stdio.h>
using namespace std;

void print(deque<int> &d)
{
	for (int i = 0; i < d.size(); i++)
		printf("%d ", d[i]);
	printf("\n");
}

int main()
{
	deque<int> first;                                // empty deque of ints
	deque<int> second (4,100);                       // four ints with value 100
	deque<int> third (second.begin(), second.end()); // iterating through second
	deque<int> fourth (third);                       // a copy of third

	// the iterator constructor can also be used to construct from arrays:
	int myints[] = {16, 2, 77, 29};
	deque<int> fifth (myints, myints + sizeof(myints) / sizeof(int) );
	print(fifth); //16 2 77 29

	fifth.push_front(1); 
	fifth.push_back(100);

	print(fifth); //1 16 2 77 29 100
	
	fifth.front() += fifth.back();
	print(fifth); //101 16 2 77 29 100

	return 0;
}
