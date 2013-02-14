#include<iostream.h>
#include<math.h>

long double s[100];
int s_s=0,sol;

float blade(float dim)
{  int temp,i;

	for(i=0;i<s_s;i++)
	{
		if(s[i]>dim) continue;
		if(s[i]==dim) temp = i;
		else temp = i+1;
	}

	return temp;
}


int main()
{	float a,b,c;
	int j;
	for(j=0;j<70;j++)
	{	s[s_s]=pow(2,j);
		s_s++;
	}

	cin >> a;
	while(a!=0)
	{	sol=0;
		cin >> b;
		cin >> c;

		sol+=blade(c);
		sol+=blade(b);
		sol+=blade(a);

		cout << sol << endl;
		cin >> a;
	}

	return 0;
}