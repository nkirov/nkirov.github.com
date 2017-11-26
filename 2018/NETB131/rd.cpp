// random permutation 1...n

#include <iostream>
using namespace std;

void swap(int &i, int &j)
{
    int t = i; i = j; j = t;
} 

int n = 24;
int ran = 10*n;

int main()
{
    int a[100];
    for (int i=0; i<=n; i++) a[i] = i;
    srand(n);
    
    for (int i=0; i<=ran; i++)
        swap(a[rand()%n+1], a[rand()%n+1]);
    
    for (int i=0; i<=n; i++)
        cout << a[i] << endl;
    return 0;
}
