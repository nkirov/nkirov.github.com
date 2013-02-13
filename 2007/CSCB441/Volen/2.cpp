#include <iostream>
#include <cmath>

using namespace std;

int r[8] = { 1, 7, 11, 13, 17, 19, 23, 29 };

bool isPrime(int n)
{
     if (n == 2) return true;
     
     int i = 2;
     while(i <= sqrt(n))
     {
             if ( n % i == 0 ) return false;
             i++;
     }
     
     return true;
}


void findPrimes(int a, int b)
{    
    if (a >= 2 && a <= 5)
       for (int i = a; i <= 5; i++)
           if (isPrime(i)) cout << i << "\t";
           
    int k = 0, j = 0;
    for (k = 0; 30*k + r[j] <= b; k++)
          for (j = 0; 30*k + r[j] <= b && j < 8; j++)
                if (30*k + r[j] >= a && isPrime(30*k + r[j])) 
                         cout << 30*k + r[j] << "\t";
}


int main()
{
    int a, b;
    cin >> a;
    cin >> b;
    
    findPrimes(a, b);
    
    char ch;
    cin >> ch;
    
    return (0);
}
