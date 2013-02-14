// c.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
using namespace std;

int main(int argc, char* argv[])
{
	
	int n,m;
	int stor[50001];
	stor[0]=0;
	bool flag;
	int br,palibr=0;
	char a[17];
	a[16]='\0';
	int temp;
	for(int i=1;i<=50000;i++)
	{
		flag=true;
		br=0;
		temp=i;
		do
		{
			if(temp%2) a[br++]='1';
			else a[br++]='0';
			temp/=2;
		}while(temp);
		for(int p=0,r=br-1;p<=r;p++,r--) if(a[p]!=a[r]) {flag=false;break;}
		if(flag) palibr++;
		stor[i]=palibr;
	}
	do
	{
		cin >> n; 
		if(n==0 ) break;
		cin >> m;
		if(stor[n]!=stor[n-1]) cout << (stor[m]-stor[n])+1 << endl;
		else cout << stor[m] - stor[n] << endl;
	}while(1);

	return 0;
}
