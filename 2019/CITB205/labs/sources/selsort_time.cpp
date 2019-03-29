#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <algorithm>
using namespace std;

#include "ccc_time.cpp"

/**
   Swaps two integers.
   @param x the first integer to swap
   @param y the second integer to swap
*/
void swap(Time& x, Time& y)
{  Time temp = x;
   x = y;
   y = temp;
}

/**
    Gets the position of the smallest element in a vector range.
    @param a the vector
    @param from the beginning of the range
    @param to the end of the range
    @return the position of the smallest element in
    the range a[from]...a[to]
*/

long sec(Time t)
{
    return t.get_hours()*3600 + t.get_minutes()*60 + t.get_seconds();
}

int min_position(vector<Time>& a, int from, int to)
{  int min_pos = from;
   int i;
   for (i = from + 1; i <= to; i++)
      if (sec(a[i]) < sec(a[min_pos])) min_pos = i;
   return min_pos;
}

/**
   Sorts a vector using the selection sort algorithm
   @param a the vector to sort
*/
void selection_sort(vector<Time>& a)
{  int next; /* the next position to be set to the minimum */

   for (next = 0; next < a.size() - 1; next++)
   {
      /* find the position of the minimum */
      int min_pos = min_position(a, next, a.size() - 1);
      if (min_pos != next)
         swap(a[min_pos], a[next]);
   }
}

/**
   Prints all elements in a vector
   @param a the vector to print
*/
void print(vector<Time> a)
{  for (int i = 0; i < a.size(); i++)
      cout << a[i].get_hours() << ":"
        << a[i].get_minutes() << ":" << a[i].get_seconds() << endl;
   cout << "\n";
}

/**
   Sets the seed of the random number generator.
*/
void rand_seed()
{  int seed = static_cast<int>(time(0));
   srand(seed);
}

/**
   Computes a random integer in a range.
   @param a the bottom of the range
   @param b the top of the range
   @return a random integer x, a <= x and x <= b
*/
int rand_int(int a, int b)
{  return a + rand() % (b - a + 1);
}

bool comp(Time t1, Time t2)
{
    if(sec(t1) < sec(t2)) return true;
    if(sec(t1) > sec(t2)) return false;
    return true;
}

int main()
{  rand_seed();
   vector<Time> v(20);
   for (int i = 0; i < v.size(); i++)
      v[i] = Time(rand_int(0, 23), rand_int(0, 59), rand_int(0, 59));
   print(v);
   //selection_sort(v);
   sort(v.begin(), v.end(), comp);
   print(v);
   return 0;
}
