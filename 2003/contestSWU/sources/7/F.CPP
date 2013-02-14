#include <stdio.h>

__int64 mass[128];

__int64 foo( __int64 n, __int64 from, __int64 to, __int64 temp)
{
	if( n==0 ) return 0;
	if( mass[n-1] == from)
		return foo( n-1, from, temp, to);

	if( mass[n-1] == to )
	{
		__int64 res = foo(n-1, temp, to, from);
		if( res == -1)
			return -1;
		return (1<<(n-1)) + res;
	}
	return -1;
}

__int64 main(void)
{
	__int64 m, n;

	scanf("%I64d", &m);

	for(__int64 i=0; i<m; i++)
	{
		scanf("%I64d", &n);
		for(__int64 j=0; j<n; j++)
			scanf("%I64d", mass+j);

		printf( "%I64d\n", foo(n, 1, 2, 3));

	}
	return 0;
}