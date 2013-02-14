#include <stdio.h>

int clog( __int64 a)
{
	__int64 b = 1;
	for(__int64 i=0; i<64; i++)
		if( (b<<i) >= a )
			return (int)i;

	int j=0;
	return (5/j);
}

int a,b,c;
int scan(void)
{
	scanf("%d", &a);
	if(!a)
		return 0;

	scanf("%d%d", &b, &c);
	return 1;
}

int main(void)
{
	while(scan())	
		printf("%d\n", clog(a) + clog(b) + clog(c) );

	return 0;
}