/* Stoycho Todorov Petrov, SWU "Neofit Rilski", 3 kurs informatika f.n.82445
	zadacha 4, publikuvana na 25.10.2002
	Borland C++ 3.11 for DOS/Windows
*/

#include <fstream.h>
long len(long l)
{	long len = 1;
	while( l != 1 )
	{	if( l % 2 == 0 )
		{  len++;
			l /= 2;
		}
		else
		{	len++;
			l = 3 * l + 1;
		}
	}

	return len;
}

int main()
{	ifstream in("lenseq.inp");
	ofstream out("lenseq.out");

	if( in == NULL )
	{  cout << "File open error ! \n";
		return 1;
	}

	long a,b;

	in >> a >> b;

	long i,temp_len = 0,perm_len = 0,chislo = -1;

	for( i = a ; i < b ; i++ )
	{	temp_len = len(i);
		if( temp_len > perm_len )
		{	perm_len = temp_len;
			chislo = i;
		}

	}

	out << chislo << endl;



}
