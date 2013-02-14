/* Stoycho Todorov Petrov, SWU "Neofit Rilski", 3 kurs informatika f.n.82445
	zadacha 2a, publikuvana na 11.10.2002
	Lonesome Knight

	Borland C++ 3.11 for DOS
*/


#include<fstream.h>

int main()
{  ifstream in("knight.inp");
	ofstream out("knight.out");

	int a[8][8] = {{2,3,4,4,4,4,3,2},
						{3,4,6,6,6,6,4,3},
						{4,6,8,8,8,8,6,4},
						{4,6,8,8,8,8,6,4},
						{4,6,8,8,8,8,6,4},
						{4,6,8,8,8,8,6,4},
						{3,4,6,6,6,6,4,3},
						{2,3,4,4,4,4,3,2}};

	int i,j,n,N;

	char c[10];

	in >> N;

	for( n = 0 ; n < N ; n++ )
	{	in >> c;

		switch(c[0])
		{	case 'a': i = 0; break;
			case 'b': i = 1; break;
			case 'c': i = 2; break;
			case 'd': i = 3; break;
			case 'e': i = 4; break;
			case 'f': i = 5; break;
			case 'g': i = 6; break;
			case 'h': i = 7; break;
			default : i = -1; break;
		}
		switch(c[1])
		{	case '1': j = 0; break;
			case '2': j = 1; break;
			case '3': j = 2; break;
			case '4': j = 3; break;
			case '5': j = 4; break;
			case '6': j = 5; break;
			case '7': j = 6; break;
			case '8': j = 7; break;
			default : j = -1; break;
		}

		out << a[i][j] << endl;

	}

	in.close();
	out.close();

}

