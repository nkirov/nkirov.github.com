#include <iostream>
#include <algorithm>
using namespace std;

int main () 
{
	int p[] = {1,2,3};

	//Rearranges the elements in the range [first, last) into 
	//the lexicographically next greater permutation of elements.
	//The comparisons of individual elements are performed using 
	//either operator< for the first version, or comp for the second.
	do 
	{
	  printf("%d %d %d\n", p[0], p[1], p[2]);
	}
	while (next_permutation (p, p + 3));

	//1 2 3
	//1 3 2
	//2 1 3
	//2 3 1
	//3 1 2
	//3 2 1
	
	printf("\n");
	printf("%d %d %d\n", p[0], p[1], p[2]); //1 2 3

	//lexicographically next smaller permutation of elements
	prev_permutation (p, p + 3);
	printf("%d %d %d\n", p[0], p[1], p[2]); //3 2 1

	//lexicographically next smaller permutation of elements
	prev_permutation (p, p + 3); 
	printf("%d %d %d\n", p[0], p[1], p[2]); //3 1 2
	
	return 0;
}