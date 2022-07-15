#include <iostream>
#include <vector>
using namespace std;

vector<int> a(20);

void print(vector<int> a)
{
   int i;
   for (i = 0; i < a.size(); i++) cout << a[i] << " ";
   cout << "\n";
}

void rand_seed()
{
   int seed = static_cast<int>(time(0));
   srand(seed);
}

int rand_int(int a, int b)
{  return a + rand() % (b - a + 1);  }

void quicksort(int left, int right)
{
 int i=left, j=right;
 int x=a[(i + j)/2];
 do
 {
  while (a[i] < x) i++;
  while (a[j] > x) j--;
  if (i<=j)
  { swap(a[i], a[j]); i++; j--; }
 }
 while (i<=j);
 if (left<j) quicksort(left, j);
 if (i<right) quicksort(i, right);
} 

int main()
{
    rand_seed();
    int i;
    a[0] = 1;
    for (i = 0; i < a.size(); i++)
        a[i] = rand_int(1, 100);
    print(a);
    quicksort(0, a.size()-1);
    print(a);
    return 0;	
}
