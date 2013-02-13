#include <iostream>
#include <cmath>
#include <vector>

using namespace std;

unsigned isPrime(unsigned n)
{
     if(n == 2) return 1;
     for(unsigned i = 2; i <= sqrt(n); i++)
           if(n % i == 0) return 0;
     
     return 1;     
}

double phi(unsigned n) 
{
     double product = 1;
         
     for(unsigned p = 2; p <= n; p++)
             if(n % p == 0 && isPrime(p))
                  product *= (1 - 1.0/p);

     return n * product;    
}

int main()
{   
    unsigned N, K;
    double sum = 0;
    vector<unsigned> answers;
    
    while(true)
    {
            cin >> K; 
            if (K == 0) break;
            cin >> N;
            
            
            for (int j = 1; j <= N; j++)
            {
                if (N % j == 0) 
                   sum += phi( N*1.0 / j ) * pow( K*1.0, j );
            }
                
            answers.push_back( sum / N );
                
            sum = 0;
    }
    
    for(unsigned i = 0; i < answers.size(); i++)
         cout << answers[i] << endl;
      
     
    system( "PAUSE" );
    return( 0 );
}



