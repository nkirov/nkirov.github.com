
#include <iostream>
#include <string>
#define MAX 201
using namespace std;

int d[MAX], N, k;
string num;
string nmin;

void call()
{
     string ntemp = "";
     for (int i = 1; i <= k; i++) ntemp = ntemp + num[d[i]-1];
     if ((ntemp < nmin) && (ntemp[0] != '0')) nmin = ntemp;
}

void comb(int nn)
{
     if (nn == k + 1) call();
     else
     for (int i = d[nn - 1] + 1; i < N - k + nn; i++)
     { 
        d[nn] = i; 
        comb(nn + 1); 
     }
}

int main()
{
 while (cin >> num)
 {
   N = num.length() + 1;
   for (int j = 1; j < N; j++)  // for positions
   {
       nmin = ""; 
       for (int z = 0; z < j; z++) nmin = nmin + '9'; 
       k = j;
       d[0]= 0; 
       comb(1);
       cout << nmin << endl;
  }
 }
 return 0;
}
