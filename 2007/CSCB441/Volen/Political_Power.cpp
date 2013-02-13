#include <iostream>
#include <cmath>
#include <vector>

using namespace std;

#define MAXN 32

unsigned N, V, k, totalBanzhafPower = 0;
unsigned mp[MAXN];
unsigned votes[MAXN];
unsigned power[MAXN];

vector<unsigned> answers;

void coalition()
{
     unsigned sum = 0;
     for(unsigned j=0; j<k; j++) 
                  sum += votes[ mp[j]-1 ]; 
     
     if( sum >= V )
         for(unsigned i=0; i<k; i++)
         {
               if(sum - votes[ mp[i]-1 ] < V)
               {
                     power[ mp[i]-1 ]++;
                     totalBanzhafPower++;
               }           
         }
}

void comb(unsigned i, unsigned after)
{
     if(i > k) return;
     for(unsigned j = after + 1; j <= N; j++)
     {
                  mp[i-1]=j;
                  if(i==k) coalition();
                  comb(i+1,j);
     }     
}

int main()
{    
    while(true) 
    {
        for(unsigned i = 0; i < N; i++)
        { 
               votes[i] = 0;
               power[i] = 0;
        }
        
        totalBanzhafPower = 0;
        
        cin >> N;
        if(N == 0) break;
        cin >> V;
        
        for(unsigned j = 0; j < N; j++)
               cin >> votes[j];

        for(k = 1; k <= N; k++) 
               comb(1,0);
               
        for(unsigned j = 0; j < N; j++)
            answers.push_back( round( (power[j]*1.0/totalBanzhafPower)*100 ) );
           
        answers.push_back( -1 ); 
    }
    
    for(unsigned j = 0; j < answers.size(); j++)
    {
         if(answers[j] == -1)
           cout << endl;
         else
           cout << answers[j] << endl;
    }       
    
    return( 0 );
}
