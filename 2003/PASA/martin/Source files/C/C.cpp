/*
Курсов проект  - INF296
на Мартин Руменов Ахчиев, FN 14050
*/

#include <cstdlib>                                                                                             
#include <fstream> 
#include <cstring>                                                                                                                                     
#include <iostream>
using namespace std;

#define MAXCOINS  10000                                                                           
#define MAXSUM 10000    
   
unsigned coins[MAXCOINS];
bool can[MAXSUM];
unsigned sum;
unsigned n;
unsigned s_coins = 0;


bool Check(){ 
    memset(can,MAXSUM,false);
    can[0]=true;
    for(int i=0; i<=n; i++)
        for(int j=s_coins; j>=0; j--)
            if(can[j])
               if((coins[i]+j)==sum) return true;
               else can[coins[i]+j] = true;
    return false;
}
int main(){

    ifstream fin("file.inp",ios::in);
    ofstream fout("file.out",ios::out);
    while(fin >>sum >>n){
        for(int i=0; i<n; i++){
            fin >>coins[i];
            s_coins+=coins[i];
        }
        if(Check()) fout <<"Yes";
        else fout <<"No";
    }
    system("PAUSE");
    return 0;
}
