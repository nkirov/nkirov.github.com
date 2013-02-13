#include <iostream>
#include <iomanip>
#include <vector>

using namespace std;

#define MAXN 10

char used[MAXN];
unsigned mp[MAXN];

unsigned votes[MAXN];
unsigned pivoting[MAXN];

vector<double> answers;

unsigned N, V;

unsigned factorial(unsigned n)
{
         if (n == 1) return 1;
         else return n * factorial( n-1 );
}

void pivotCount()
{
     unsigned sum = 0;
     for(unsigned i = 0; i < N; i++) 
     {
          sum += votes[ mp[i] ];
          if(sum >= V)
          {
              pivoting[ mp[i] ]++;
              break;            
          }          
     }     
}

void permute(unsigned i)
{
     if (i >= N) 
     {
           pivotCount();
           return;      
     }
     
     for(unsigned k = 0; k < N; k++ )
     {
             if(!used[k])
             {
                      used[k] = 1;
                      mp[i] = k;
                      permute(i+1);
                      used[k] = 0;            
             }        
     }     
}


int main()
{ 
    while(true)
    {
        for(unsigned i = 0; i < N; i++) 
        {       
                used[i] = 0;
                pivoting[i] = 0;
        }
        
        cin >> N;
        if(N == 0) break;
        cin >> V;
        
        for(unsigned j = 0; j < N; j++)
                cin >> votes[j];
        
        permute(0);
        
        for(unsigned k = 0; k < N; k++)
                answers.push_back( (pivoting[k]*1.0/factorial(N))*100 );
                
        answers.push_back( -1 );
    }
    
    for(unsigned j = 0; j < answers.size(); j++)
        if(answers[j] == -1)
            cout << endl;
        else
            cout << setprecision(3) << answers[j] << endl;         
    
    return( 0 );
}
