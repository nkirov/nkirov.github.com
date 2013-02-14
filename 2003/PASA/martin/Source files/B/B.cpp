/*
Курсов проект  - INF296
на Мартин Руменов Ахчиев, FN 14050
*/
#include <cstdlib>                                                       `                                     
#include <fstream>                                    
#include <cstring>                                                                                                    
#include <iostream>
using namespace std;

#define MAXCOINS  1000                                                                           
#define MAXSUM 1000    

ifstream fin("file.inp",ios::in);                                                          
ofstream fout("file.out",ios::out);   
unsigned long F[MAXSUM][MAXSUM];
unsigned coins[MAXCOINS];
unsigned sum;
unsigned n;

int compare(const void *, const void *);
void init(void);
unsigned long count(int , int );

int main(){
	while(fin >>sum >>n){
		for(int i=0; i<n; i++)
			fin >>coins[i];
	}
	init();
	qsort( coins,n,sizeof(int), compare);
	if(!count(sum,n-1))fout<<"No" <<endl;
    system("PAUSE");
	return 0;
}
int compare(const void *i, const void *j){
	return *(int *)i - *(int *)j;
}
void init(void){
	
	unsigned i,j;
	for( i=0;  i<=sum; i++)
		for(j=0; j<=sum; j++)
			F[i][j]=0;
}
unsigned long count(int sum, int k){
	unsigned j;
	if(sum <=0 || k < 0)return 0;
	if(F[sum][k]>0) return F[sum][k];
	else{
		if(coins[k]==(unsigned)sum){
		   F[sum][k] = 1;
    		fout <<"Yes" <<endl;
			exit(1);
		}
		F[sum][k]+=count(sum-coins[k], k-1);
		j = k;
		while(coins[j]==coins[k])j--;
		F[sum][k]+=count(sum,j);
	}
	return F[sum][k];
}


