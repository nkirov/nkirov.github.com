/*
 file:///Users/nkirov/nkirov.github.com/2014/WCP/index.html
 28.11.2013 задача C
 
 Напишете програма, която сортира редица от цели положителни числа в нарастващ ред по броя на единиците в двоичното им представяне. Ако този брой е равен, то числата се сортират в намаляващ ред по тяхната стойност.  
 Вход
 На всеки ред на стандартния вход е зададена редица от не повече от 10000 цели положителни числа, разделени с един или няколко интервала.
 Изход
 За всеки тест на отделен ред да се изведе редицата от числа, сортирана по искания начин. Числата трябва да са разделени с точно един интервал.
 
 4 1 2 3 4 5 6 7 
 2 3 5 6 8
 2 4 5
 3 6 8 2
 1 2 
 100
 
 
 4 4 2 1 6 5 3 7 
 8 2 6 5 3
 4 2 5
 8 2 6 3
 2 1 
 100
 
 Например 1 2 3 4 5 6 7 трябва да бъде сортирана по следния начин (в скоби е броят на единиците в двоичното представяне на числото):
 4(1) 2(1) 1(1) 6(2) 5(2) 3(2) 7(3)
*/

#include <cstdio>
#include <bitset>
#include <algorithm>
using namespace std;

#define MAXN 10001
#define MAXL 101

int k, n, a[MAXN];
char str[(MAXN * MAXL) + MAXL];

int compare (const int a, const int b)
{
	bitset<32> bsa((int)a);
	bitset<32> bsb((int)b);
	int ac = bsa.count();
	int bc = bsb.count();
	if(ac == bc)
		return a > b;
	else
		return ac < bc;
}

int main()
{
    while (!feof(stdin))
    {
		gets(str);
		n = 0;
		char *p = strtok(str, " ");

		while(p != NULL)
		{
			a[n++] = atoi(p);
			p = strtok(NULL, " ");
		}

		sort (a, a + n, compare);
		
		for (int i = 0; i < n - 1; i++)
			printf("%d ", a[i]);
		
		printf("%d\n", a[n - 1]);
    }

    return 0;    
}
