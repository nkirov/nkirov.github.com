#include <stdio.h>
#include <list>
using namespace std;

void print(list<int> l)
{
	for (list<int>::iterator it = l.begin(); it != l.end(); it++)
		printf("%d ", *it);
	printf("\n");
}

int main ()
{
  // constructors used in the same order as described above:
  list<int> first;                                // empty list of ints
  list<int> second (4,100);                       // four ints with value 100
  list<int> third (second.begin(),second.end());  // iterating through second
  list<int> fourth (third);                       // a copy of third

  // the iterator constructor can also be used to construct from arrays:
  int myints[] = {16, 2, 77, 29};
  list<int> fifth (myints, myints + sizeof(myints) / sizeof(int) );
  print(fifth); //16 2 77 29

  fifth.push_front(1);
  fifth.push_back(100);
  print(fifth); //1 16 2 77 29 100

  list<int>::iterator it = fifth.begin(); // points to first element
  it++; // points to second element

  fifth.insert(it, 33);
  print(fifth); //1 33 16 2 77 29 100

  it++; // points to third element
  fifth.insert(it, 2, 20);
  print(fifth); //1 33 16 20 20 2 77 29 100
  
  return 0;
}