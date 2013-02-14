/* Veselin Todorov Petrov, SWU "Neofit Rilski", 3 kurs KST, f.n.60263
zadacha 2a, publikuvana 11.10.2002,
Borland C++ 3.11 for Dos/Windows
*/

#include<fstream.h>

int main()
{	ifstream fin("knight.inp");
	ofstream fout("knight.out");
	if( !fin )
	{	cout << "file open error" << endl;
		return 1;
	}
	int a[8]={2,3,4,4,4,4,3,2};
	int b[8]={3,4,6,6,6,6,4,3};
	int c[8]={4,6,8,8,8,8,6,4};
	int d[8]={4,6,8,8,8,8,6,4};
	int e[8]={4,6,8,8,8,8,6,4};
	int f[8]={4,6,8,8,8,8,6,4};
	int g[8]={3,4,6,6,6,6,4,3};
	int h[8]={2,3,4,4,4,4,3,2};
	int i,n;

	fin >> n;

	int rez[100] = {0};
	char ch[100] = {'\0'},tek[100] = {'\0'},krai = '\0';


	for(i=0; i<n; i++)
	{  fin.get(krai);
		fin.get(ch[i]);
		fin.get(tek[i]);

	}
	for(i=0; i<n; i++)
	{	switch (ch[i])
		{	case 'a' : switch (tek[i])
						  {	case '1' : rez[i]=a[0]; break;
								case '2' : rez[i]=a[1]; break;
								case '3' : rez[i]=a[2]; break;
								case '4' : rez[i]=a[3]; break;
								case '5' : rez[i]=a[4]; break;
								case '6' : rez[i]=a[5]; break;
								case '7' : rez[i]=a[6]; break;
								case '8' : rez[i]=a[7]; break;
						  }   break;
			case 'b' : switch (tek[i])
						  {	case '1' : rez[i]=b[0]; break;
								case '2' : rez[i]=b[1]; break;
								case '3' : rez[i]=b[2]; break;
								case '4' : rez[i]=b[3]; break;
								case '5' : rez[i]=b[4]; break;
								case '6' : rez[i]=b[5]; break;
								case '7' : rez[i]=b[6]; break;
								case '8' : rez[i]=b[7]; break;
							}	break;
			case 'c' : switch (tek[i])
						  {   case '1' : rez[i]=c[0]; break;
								case '2' : rez[i]=c[1]; break;
								case '3' : rez[i]=c[2]; break;
								case '4' : rez[i]=c[3]; break;
								case '5' : rez[i]=c[4]; break;
								case '6' : rez[i]=c[5]; break;
								case '7' : rez[i]=c[6]; break;
								case '8' : rez[i]=c[7]; break;
						  }   break;
			case 'd' : switch (tek[i])
						  {   case '1' : rez[i]=d[0]; break;
								case '2' : rez[i]=d[1]; break;
								case '3' : rez[i]=d[2]; break;
								case '4' : rez[i]=d[3]; break;
								case '5' : rez[i]=d[4]; break;
								case '6' : rez[i]=d[5]; break;
								case '7' : rez[i]=d[6]; break;
								case '8' : rez[i]=d[7]; break;
						  }   break;
			case 'e' : switch (tek[i])
						  {   case '1' : rez[i]=e[0]; break;
								case '2' : rez[i]=e[1]; break;
								case '3' : rez[i]=e[2]; break;
								case '4' : rez[i]=e[3]; break;
								case '5' : rez[i]=e[4]; break;
								case '6' : rez[i]=e[5]; break;
								case '7' : rez[i]=e[6]; break;
								case '8' : rez[i]=e[7]; break;
						  }   break;
			case 'f' : switch (tek[i])
						  {   case '1' : rez[i]=f[0]; break;
								case '2' : rez[i]=f[1]; break;
								case '3' : rez[i]=f[2]; break;
								case '4' : rez[i]=f[3]; break;
								case '5' : rez[i]=f[4]; break;
								case '6' : rez[i]=f[5]; break;
								case '7' : rez[i]=f[6]; break;
								case '8' : rez[i]=f[7]; break;
						  }   break;
			case 'g' : switch (tek[i])
						  {   case '1' : rez[i]=g[0]; break;
								case '2' : rez[i]=g[1]; break;
								case '3' : rez[i]=g[2]; break;
								case '4' : rez[i]=g[3]; break;
								case '5' : rez[i]=g[4]; break;
								case '6' : rez[i]=g[5]; break;
								case '7' : rez[i]=g[6]; break;
								case '8' : rez[i]=g[7]; break;
						  }   break;
			case 'h' : switch (tek[i])
						  {   case '1' : rez[i]=h[0]; break;
								case '2' : rez[i]=h[1]; break;
								case '3' : rez[i]=h[2]; break;
								case '4' : rez[i]=h[3]; break;
								case '5' : rez[i]=h[4]; break;
								case '6' : rez[i]=h[5]; break;
								case '7' : rez[i]=h[6]; break;
								case '8' : rez[i]=h[7]; break;
						  }   break;

		}
	}
	for(i=0;i<n;i++)
	fout << rez[i] << endl;

	fin.close();
	fout.close();

	return 0;
}