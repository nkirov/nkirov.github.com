#include <stdlib.h>
#include <stdio.h>

unsigned long double bx, by, bz;

unsigned int total = 0;

void pathetic(unsigned long double whateva)
{
	while(whateva > 1)
	{
		whateva /= 2;
		total++;
	}
}

int main(int argc, char* argv[])
{
	bx = 1;

	while(bx != 0)
	{
		scanf("%lf", &bx);
		if(bx != 0)scanf("%lf %lf", &by, &bz);else break;

		total = 0;

		pathetic(bx);
		pathetic(by);
		pathetic(bz);

		printf("%d\n", total);
	}

	return 0;
}
