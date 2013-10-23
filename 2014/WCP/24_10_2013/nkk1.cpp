#include <iostream>
using namespace std;

int a[100], b[100], mand[100], part[100];

int main()
{
    int n;
    int sum;
    while (cin >> n && n > 0)
    {
          sum = 0;
          for (int i=0; i<n; i++) 
          {
              cin >> a[i]; sum += a[i];
          }
          double f = sum*0.04;
          int m = 0;
          sum = 0;
          for (int i=0; i<n; i++) 
              if (a[i] > f) 
          {
              b[m] = a[i];
              part[m] = i;
              sum += b[m];
              m++;
          }
          int smand = 0;
          for (int j=0; j<m; j++) 
          {
                  mand[j] = 240*b[j]/sum; 
                  smand += mand[j];
                  cout << (part[j]+1) << ":" << mand[j] << " ";
          }
          if (smand < 240) cout << "president:" << (240 - smand);
          cout << endl;
    }
    return 0;
}
