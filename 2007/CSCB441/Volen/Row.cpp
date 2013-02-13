#include <iostream>
#include <vector>

using namespace std;

int Ns[ 10001 ];
vector<int> longestCounts;

int main()
{
    int i = 0, j = 0, k = 0, l = 0, m = 0;
    for( i = 0; i < 10001; i++ ) Ns[ i ] = 0;
    
    int N = 1;
    int longest = 1, tempCount = 1;
    
    while( N != 0 )
    {
        cin >> N;
        
        if( N > 0 ){
            for( j = 0; j < N; j++ )
            {
                 cin >> Ns[ j ];
            }
            
            for( k = 0; k < 10000; k++ )
            {
                 if( Ns[ k ] == Ns[ k + 1 ] )
                 { 
                     tempCount++;
                     continue;
                 }
                 
                 if( tempCount > longest )
                 {
                     longest = tempCount;
                     tempCount = 1;
                 }
            }
            
            longestCounts.push_back( longest );
            
            longest = 1;
            tempCount = 1;
            
            for( m = 0; m < 10001; m++ ) Ns[ m ] = 0;
        }
    }
    
    for( l = 0; l < longestCounts.size(); l++ )
         cout << longestCounts[ l ] << endl;
    
    system( "PAUSE" );
    
    return( 0 );
}
