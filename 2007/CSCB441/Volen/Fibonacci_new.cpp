#include <iostream>
#include <vector>
#include <string>

using namespace std;

string sum( string a, string b )
{
    string longerStr, shorterStr, result = "";
    int maxSize, tempSum, strPos, transfer = 0;
    
    if( a.size() >= b.size() )
    { 
        maxSize = a.size();
        longerStr = a;
        shorterStr = b;
        strPos = b.size()-1;
    }
    else
    {
         maxSize = b.size();
         longerStr = b;
         shorterStr = a;
         strPos = a.size()-1;
    }
    
    for( int i = maxSize - 1; i >= 0; i-- )
    {
         tempSum = longerStr[i]-'0' + transfer;
         
         if( strPos >= 0 )
             tempSum += shorterStr[strPos]-'0';
             
         if( tempSum >= 10 )
         {
             result = char(tempSum%10 + '0') + result; 
             transfer = 1;   
             if(i == 0) result = '1' + result;
         }
         else
         {
             result = char(tempSum + '0') + result;
             transfer = 0;
         }
         
         strPos--;
     }
     
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
