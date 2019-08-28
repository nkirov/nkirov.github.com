// permute.cpp
#include <iostream>
using namespace std;
#define MAXN 100

int n = 4;
int used[MAXN];
int mp[MAXN];

void print()
{ 
	for (int j = 0; j < n; j++) cout << mp[j] + 1 << " ";
	cout << endl;
}
void permute(int i)
{ 
	if (i >= n) 
	{ 
	 	print(); 
	  	return; 
	}
  	for (int j = 0; j < n; j++)
  	{ 
		if (used[j] == 0)
		{ 
			used[j] = 1; mp[i] = j;
      		permute(i + 1);
      		used[j] = 0;
		}
  	}
}
int main()
{ 
    while ( cin >> n )
    {
    	for (int j = 0; j < n; j++) used[j] = 0;
	    permute(0);  
     }    
	return 0;
} 
