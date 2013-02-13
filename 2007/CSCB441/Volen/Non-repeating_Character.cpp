#include <iostream>
#include <string>

using namespace std;

int charCount[ 128 ];

int main()
{
    for( int i = 0; i < 128; i++ ) charCount[ i ] = 0;

    char ch;
    string s;
    
    while( cin >> ch ) 
    {
           charCount[ ch ]++;
           s += ch;
    }
    
    for( int k = 0; k < s.size(); k++ )
    {
            if( charCount[ s[ k ] ] == 1 )
            {
                cout << s[ k ]; 
                break;
            }
            
            if( k == s.size() - 1 ) cout << "none";
    }
                              
    system( "PAUSE" );
        
    return( 0 );
}
