#include <iostream>
#include <time.h>
using namespace std;

const int M = 100001;

int a[M];

int main()
{
    time_t start, end;
    time(&start);
    int n;
    cin >> n;
    for (int k=0; k<n; k++)
    {
        for (int j = M - 1; j >= 0; --j) a[j] = 0;
        int m;
        cin >> m;
        for (int i=0; i<m; i++)
        {
            int num;
            cin >> num; a[num]++;
        }
        int max = 0;
        int ind = 0;
        for (int j = M - 1; j >= 0; --j)
            if (a[j] >= max) 
        {
            max = a[j];
            ind = j;             
        }
        cout << ind << endl; 
    }
    time(&end);
    cout << endl << "time = " << difftime (end,start) << endl;
    return 0;    
}
