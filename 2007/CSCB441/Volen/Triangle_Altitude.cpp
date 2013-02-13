#include <iostream>
#include <iomanip>
#include <cmath>
#include <vector>

using namespace std;

int max(int a, int b, int c)
{
    int max = a;
    if( b > max ) max = b;
    if( c > max ) max = c;
    
    return max;  
}

int main()
{
    int N, a, b, c;
    double p, S, h;
    vector<double> altitudes;
    
    cin >> N;
    
    for( int i = 0; i < N; i++ )
    {
         cin >> a >> b >> c;
         
         if( a + b > c )
         {
             p = ( a + b + c ) / 2.0;
             S = sqrt( p * ( p - a ) * ( p - b ) * ( p - c ) );
             h = ( 2 * S ) / max(a, b, c);
             altitudes.push_back( h );
         }
         else
             altitudes.push_back( 0 );
    }
    
    for( int k = 0; k < altitudes.size(); k++ )
         cout << setprecision(3) << altitudes[ k ] << endl;
    
    system( "PAUSE" );
    
    return( 0 );
}
