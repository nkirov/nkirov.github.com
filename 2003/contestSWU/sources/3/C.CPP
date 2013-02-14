#include<stdio.h>
long a,b; //bounds of the interval
short pal[1000];


void run()
{
	int palindroms = 0, index;
	long tmp;
	int isPalindrome;
	int j,k;

	for (long i=a; i<=b; i++)
	{
		// convert I to base 2
		tmp = i; index = 0;
		while (tmp)
		{
			pal[index++] = (tmp%2);
			tmp /= 2;
		}
		isPalindrome = 1;
		for (j=0, k=index-1; j<k; j++,k--)
			if (pal[j]!= pal[k]) { isPalindrome=0;break; }

		if (isPalindrome) palindroms++;
	}
	printf("%d\n",palindroms);
}

main()
{
	scanf("%ld",&a);
	while (a)
	{
		scanf("%ld",&b);
		if (a>b)
		{
			long tmp;
			tmp = a; a=b ; b =tmp;
		}
		run();
		scanf("%ld",&a);
	}

}
