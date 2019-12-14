#include <list>
#include <iostream>
#include <algorithm>

using namespace std;

typedef list<int>::iterator iint;

void swap(iint px, iint py)
{  int temp = *px;
   *px = *py;
   *py = temp;
}

iint min_position(list<int>& a, iint from, iint to)
{  iint min_pos = from;
   for (iint i = ++from; i != to; i++)
   {
 //   cout << *i << endl;
    if (*i < *min_pos) min_pos = i;
   }
   //   cout << *min_position << endl;
   return min_pos;
}

void ssort(list<int>& a)
{  iint next; /* the next position to be set to the minimum */

   for (next = a.begin(); next != --a.end(); next++)
   {
      /* find the position of the minimum */
      iint min_pos = min_position(a, next, a.end());
      if (min_pos != next)
         swap(min_pos, next);
   }
}

int main()
{
    list<int> l;
    l.push_back(20);
    l.push_back(10);
    l.push_back(30);
    l.push_back(50);
    l.push_back(40);

    for (iint pos = l.begin();
            pos != l.end(); pos++)
            cout << *pos << " ";
    cout << endl;

    ssort(l);

    for (iint pos = l.begin();
            pos != l.end(); pos++)
            cout << *pos << " ";
    cout << endl;

    return 0;

}
