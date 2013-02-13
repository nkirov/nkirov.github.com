#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int m, vehicle, sum = 0;
    vector<int> vehicle_sums;
    
    while( cin >> m )
    {
        for( int i = 0; i < m; i++ )
        {    
             cin >> vehicle;
             sum += vehicle;
        }
        
        vehicle_sums.push_back( sum );
        sum = 0;
    }
    
    for( int i = 0; i < vehicle_sums.size(); i++ )
         cout << vehicle_sums[ i ] << endl;
    
    system( "PAUSE" );
    
    return( 0 );
}
