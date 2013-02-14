#include<fstream>
using namespace std;

int main()
{
	ifstream fin("knight.inp");
	ofstream fout("knight.out");

	char ch;
	int i,n,k,a[]={2,3,4,4,4,4,3,2},b[]={3,4,6,6,6,6,4,3},
		c[]={4,6,8,8,8,8,6,4};
	fin>>n;
	for(k = 0;k < n;k++)
	{
		fin>>ch>>i;
		switch(ch)
		{
		case'a':fout<<a[i - 1]<<"\n";break;
		case'b':fout<<b[i - 1]<<"\n";break;
		case'c':fout<<c[i - 1]<<"\n";break;
		case'd':fout<<c[i - 1]<<"\n";break;
		case'e':fout<<c[i - 1]<<"\n";break;
		case'f':fout<<c[i - 1]<<"\n";break;
		case'g':fout<<b[i - 1]<<"\n";break;
		case'h':fout<<a[i - 1]<<"\n";break;
		}
	}
	return 0;
}
