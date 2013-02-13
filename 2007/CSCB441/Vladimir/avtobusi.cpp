#include <iostream>
using namespace std;

int main()
{   
    int a;
    while (cin >> a)
    {     int b;
          int sum = 0;
          for (int i = 0; i< a; i++)
          {   cin >> b;
              sum = sum + b;
          }
          cout << sum << endl;
    }
    system("PAUSE");
    return 0;
}
