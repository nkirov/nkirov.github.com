#include <iostream>
#include <vector>

using namespace std;

bool isReducible(int num, int denom)
{
     int div;
     if( num >= denom ) div = denom;  
     else div = num;
     
     for( div; div > 1; div-- )
          if( num % div == 0 && denom % div == 0 )
              return true;
              
     return false;   
}

void sort(vector<int>& a, vector<int>& b)
{
     for( int i = 0; i < a.size()-1 && i < b.size()-1; i++ )
          for( int j = i + 1; j < a.size(); j++ )
               if( a[i]*1.0 / b[i] > a[j]*1.0 / b[j] )
               {
                   a[i] = a[i] - a[j]; 
                   a[j] = a[i] + a[j]; 
                   a[i] = a[j] - a[i];
                   
                   b[i] = b[i] - b[j]; 
                   b[j] = b[i] + b[j]; 
                   b[i] = b[j] - b[i]; 
               }
}

vector<int> numerators, denominators;

int main()
{
    int N;
    cin >> N;
    
    for( int i = 1; i < N; i++ )
         for( int j = i + 1; j <= N; j++ )
              if( !isReducible(i, j) )
              {
                  numerators.push_back( i );
                  denominators.push_back( j );    
              }
              
    numerators.push_back( 1 );
    denominators.push_back( 1 );
              
    sort( numerators, denominators );
    
    for( int count = 0; count < numerators.size(); count++ )
         cout << numerators[count] << "/" << denominators[count] << endl;
    
    system( "PAUSE" );
    
    return( 0 );
}
