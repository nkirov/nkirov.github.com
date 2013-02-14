#include "stdio.h"
unsigned int bits[20]={0,1,2,4,8,16,32,64,128,256,512,1024,2048,4096, 8192, 16384, 32768, 65536, 131072};
unsigned int nbits(unsigned int wh)
{
	unsigned int c=0;
	while (wh>0)
	{
		c++;
		wh = wh >> 1;
	}
	return c;
}
bool checkpal(unsigned int wh, unsigned int nb)
{
	if (wh==1) return true;
	unsigned int c=1; unsigned int n=nb/2;
	while(c<=n)
	{
		if (((wh & bits[c])>0) != ((wh & bits[nb-c+1])>0)) return false;
		c++;
	}
	return true;
}
void main()
{
	unsigned int n1,n2;
	scanf("%d %d", &n1,&n2);	
	unsigned int nb,np;
	while (n1!=0)
	{
		//do calc
		nb=nbits(n1);np=0;
		//printf("%d", nb);
		for (unsigned int i=n1;i<=n2;i++)
		{
			if (i>=bits[nb+1]) nb++; //printf("%d, %d\n",i,nb);}
			if (checkpal(i, nb)) np++;//printf("%d\n",i);}
		}
		//read next
		printf("%d\n",np);
		scanf("%d", &n1);
		if (n1!=0) scanf("%d",&n2);
	}
}
