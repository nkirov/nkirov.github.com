/* 
 Sergey Sergeev Varbanov, NBU, III course, FN 15836
 zadacha 2a : 11.10.2002
 Visual C++ 6.0 
*/ 

#include <stdlib.h>
#include <iostream.h>
#include <fstream.h>

void main ()
{
	ofstream fout("knight.out");
	ifstream fin("knight.inp");
  
//	while (!fin.eof())
//	{
		int a;
		fin>>a;

		for (int i=0; i<a; i++)
		{
			int n=0;
			char p;
			char q;
			fin>>p;
			fin>>q;
			int x=q-48;
			int y=p-96;
			
			if (((x-2)>=1)&&((y-1)>=1)) n++;
			if (((x-2)>=1)&&((y+1)<=8)) n++;
			if (((x+2)<=8)&&((y-1)>=1)) n++;
			if (((x+2)<=8)&&((y+1)<=8)) n++;
			if (((y-2)>=1)&&((x-1)>=1)) n++;
			if (((y-2)>=1)&&((x+1)<=8)) n++;
			if (((y+2)<=8)&&((x-1)>=1)) n++;
			if (((y+2)<=8)&&((x+1)<=8)) n++;
			
			fout<<n<<endl;
//		}
	}
	fin.close();
	fout.close();
}

/*
Sample Input




Sample Output

2
8
6

*/