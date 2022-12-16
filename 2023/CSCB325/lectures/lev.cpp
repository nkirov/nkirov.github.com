#include <string>
#include <algorithm>
using namespace std;

int main()
{
        string s1, s2;
        while(cin >> s1 >> s2)
            {
                    int a[1000][1000] = {0};
                    int n1 = s1.length();
                    int n2 = s2.length();
                    for(int i = 0; i <= max(n1, n2); i++) a[0][i] = a[i][0] = i;
             //       cout << s1 << " " << s2 << endl;
                    for(int i = 1; i <= n1; i++)
                            for(int j = 1; j <= n2; j++)
                            {
                                    a[i][j] = min(a[i-1][j] + 1, a[i][j-1] + 1);
                                    a[i][j] = min(a[i][j], a[i-1][j-1] +
                                                                               static_cast<int>(s1[i-1] != s2[j-1]));
                                }
                    cout << a[n1][n2] << endl;
                }
        return 0;
}
