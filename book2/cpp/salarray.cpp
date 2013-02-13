// salarray.cpp 
#include <iostream> 
using namespace std; 

void read_data(double a[], int a_maxsize, int& a_size) 
{  a_size = 0; 
   double x; 
   while (a_size < a_maxsize and (cin >> x)) 
   {  a[a_size] = x;      a_size++;   } 
} 

double maximum(const double a[], int a_size) 
{  if (a_size == 0) return 0; 
   double highest = a[0]; 
   int i; 
   for (i = 1; i < a_size; i++) 
      if (a[i] > highest) highest = a[i]; 
   return highest; 
} 

int main() 
{  const int SALARIES_MAXSIZE = 100; 
   double salaries[SALARIES_MAXSIZE]; 
   int salaries_size = 0; 

   cout << "Please enter all salary data: "; 
   read_data(salaries, SALARIES_MAXSIZE, salaries_size); 

   if (salaries_size == SALARIES_MAXSIZE and not cin.fail()) 
      cout << "Sorry--extra data ignored\n"; 

   double maxsal = maximum(salaries, salaries_size); 
   cout << "The maximum salary is " << maxsal << "\n"; 
   return 0; 
} 
