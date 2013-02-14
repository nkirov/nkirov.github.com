/*
Курсов проект  - INF296
на Мартин Руменов Ахчиев, FN 14050
*/

#include <cstdlib>
#include <cstring>                                                                                             
#include <fstream>                                                                                                                                      
#include <iostream>
using namespace std;

#define MAXCOINS  10000                                                                           
#define MAXSUM 10000    

ifstream fin("file.inp",ios::in);                                                          
ofstream fout("file.out",ios::out);   
unsigned coins[MAXCOINS];
bool can[MAXSUM];
unsigned sum;
unsigned n;

void Check(int ind, int cur_sum){ 
    if(cur_sum == sum){
		fout <<"Yes";
		exit(1);
	}
    for(int i=ind; i<=n; i++)
        if(!can[i]){
           can[i]=true;
           Check(i,cur_sum+coins[i]);
           can[i]=false;
        }
}
int main(){
    while(fin >>sum >>n){
        for(int i=0; i<n; i++)
            fin >>coins[i]; 
            memset(can,false,MAXSUM);
            Check(0,0);
            fout <<"No";
    }
    system("PAUSE");
    return 0;
}
