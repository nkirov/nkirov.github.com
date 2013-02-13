#include <iostream>

using namespace std;


void zeros(int n)
{
    int zeros = 0;
    
    if (n > 0 && n < 256)
    {
        while (n != 0)
        {
               if (n%2 == 0) zeros++;
               n = n/2;
        }
        
        cout << zeros;
    }

}


int main()
{
    int n;
    cin >> n;
    
    zeros(n);
    
    char ch;
    cin >> ch;

    return 0;
}
