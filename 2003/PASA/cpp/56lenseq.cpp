/*
Velislav Simeonov Nikolov,NBU,III course,f 16811
Задача 4a: 25.10.2002 г. 
Microsoft Visual C++ 6.0
*/

#include<fstream>
using namespace std;


long unsigned f(long unsigned i)
{
	long unsigned s = 0;
	do{
		i = (i % 2) ? 3 * i + 1 : i / 2;
		s++;
	}while(i > 1);
	return s;
}

int main()
{
	ifstream fin("lenseq.inp");
	ofstream fout("lenseq.out");
	long unsigned i,a_0,a_n,n;
	
	fin>>a_0>>a_n;

	long unsigned max = f(a_0),nm = a_0;

	for(i = a_0 + 1;i <= a_n;i++)
	{
		n = f(i);
		if(n > max) { nm = i;max = n;} 
	}
	fout<<nm<<endl;

	return 0;
}



