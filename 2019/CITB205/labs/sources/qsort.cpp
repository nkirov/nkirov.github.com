#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
using namespace std;

void swap(int& x, int& y)
{  int temp = x;
   x = y;
   y = temp;
}

int ppartition(vector<int>& a, int from, int to)
{
    int i = from;
    int j = to;
    int pivot = a[i];
    while(i < j)
    {
        while(a[i] < pivot) i++;
        while(a[j] > pivot) j--;
        if (i < j)
        {
            swap(a[i], a[j]);
            i++; j--;
        }
    }
    return j;
}

void qsort(vector<int>& a, int from, int to)
{
    if (from >= to) return;
    int p = ppartition(a, from, to);
    cout << from << " "<< to << " " << p << endl;
    qsort(a, from, p);
    qsort(a, p + 1, to);
}

void print(vector<int> a)
{  for (int i = 0; i < a.size(); i++)
      cout << a[i] << " ";
   cout << "\n";
}

void rand_seed()
{  int seed = static_cast<int>(time(0));
   srand(seed);
}

int rand_int(int a, int b)
{  return a + rand() % (b - a + 1);
}

int main()
{  rand_seed();
   vector<int> v(5);
   for (int i = 0; i < v.size(); i++)
      v[i] = rand_int(1, 100);
   print(v);
   qsort(v, 0, v.size() - 1);
   print(v);
   return 0;
}
