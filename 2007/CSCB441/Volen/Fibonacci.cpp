#include <iostream>
#include <vector>
#include <string>

using namespace std;

string sum( string a, string b )
{
    int N[1000];
    
    for( int count = 0; count < 1000; count++ ) N[ count ] = 0;
    
    int tempSum, strpos = a.size()-1, pos, transfer = 0;
    
    for( int n = 0; n < 2; n++ )
    {
        for( int i = 999; i >= 0; i-- )
        {
            tempSum = N[ i ] + transfer; 
            
            if( strpos >= 0 )
                tempSum += (int)( a[ strpos ]-48 );
            
            if( tempSum >= 10 )
            {
                N[ i ] = tempSum % 10;
                transfer = 1;
            }
            else
            {
               N[ i ] = tempSum;
               transfer = 0;
            }  
            
            strpos--;
        }
        
        a = b;
        strpos = a.size() - 1;
        tempSum = 0;
        transfer = 0;
    }   
    
    string result = "";
    
    for( int count2 = 0; count2 < 1000; count2++ )
    {
         if( N[ count2 ] != 0 ) 
         {
             pos = count2;
             break;
         }
    }
        
    for( int k = pos; k < 1000; k++ )
        result += char( N[ k ] + '0' );
    
    return result;  
}

string fib(int n)
{
    string initial_value = "1", final_value = "1", temp_value, result;
    for( int count = 1; count <= n; count++ )
    {
        temp_value = sum(initial_value, final_value);
        result = initial_value;
        initial_value = final_value;
        final_value = temp_value;
    }
    
    return result;
}

vector<string> fibs;

int main()
{  
    int n;
    while(cin >> n)
         fibs.push_back( fib( n ) );
         
    for( int i = 0; i < fibs.size(); i++ )
         cout << fibs[ i ] << endl;     
    
    system( "PAUSE" );
    
    return( 0 );
}
