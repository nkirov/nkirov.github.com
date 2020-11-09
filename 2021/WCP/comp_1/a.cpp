
// Н. Киров
#include <iostream>
#include <string>
#define MAXX 1030
using namespace std;

int main()
{
    int n;
    long long a[MAXX];
    while(cin >> n)
    {
        for(int i = 0; i < n; i++) cin >> a[i];
        while (n > 1)
        {
            for(int i = 0; i < n/2; i++)
                a[i] = a[2*i + 1] - a[2*i];
            n /= 2;
        }
        cout << a[0] << endl;
    }
    return 0;
}
