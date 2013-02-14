#include <stdio.h>


int n,k;
char a[32];
int al;

int np[65536];

int printa()
{
	int i,j;
	j=0;
	for (i=n;i;i/=2,j++)
	{
		if (i%2) { a[j]='1'; } else { a[j]='0'; }
	}
	a[j]=0;
	al=j;

	for (i=0;i<al;i++)
	{
		if (a[i]!=a[al-i-1]) return 0;
	}
	return 1;

//	printf("%s\n",a);
}


int main(void)
{
	int i,j,k;
	j=0;
	for (i=0;i<65536;i++)
	{
		n=i; if (printa()) { j++; }
		np[i]=j;
	}

	for (;;)
	{
		scanf("%d",&k);
		if (k==0) { break; }
		scanf("%d",&j);
		printf("%d\n",np[j]-np[k-1]);
	}

	//n=17; printf("%d\n",printa());
	//n=18; printf("%d\n",printa());
	//n=33; printf("%d\n",printa());
	//n=7; printf("%d\n",printa());
	//n=15; printf("%d\n",printa());
	//n=34;
	printa();
	return 0;
}