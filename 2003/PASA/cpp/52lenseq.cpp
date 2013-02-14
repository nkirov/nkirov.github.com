
/* Veselin Todorov Petrov, SWU "Neofit Rilski", 3 kurs KST f.n.60263
	zadacha 4a=4b, publikuvana na 25.10.2002
	Borland C++ 3.11 for DOS/Windows
*/
#include<fstream.h>
#include<process.h>

int main()
{
	ifstream fin("lenseq.inp");
	ofstream fout("lenseq.out");

	if(!fin)
	{	cout << "File open error !!!" << endl;
		exit(0);
	}

	long a=0,b=0;

	fin >> a;
	fin >> b;

	long i,chlen;

	int max_d=0,sum=0,MAX=0;

	for(i=a;i<=b;i++)
	{  sum=1;
		chlen=i;
		while(chlen!=1)
		{
			if(chlen%2 == 0)
			{	chlen=chlen/2;
				sum++;
			}

			else
			{	chlen=3*chlen+1;
				sum++;
			}
			if(sum>max_d)
			{	max_d=sum;
				MAX=i;
			}
		}
	}
	fout << MAX;

	fin.close();
	fout.close();


	return 0;

}
