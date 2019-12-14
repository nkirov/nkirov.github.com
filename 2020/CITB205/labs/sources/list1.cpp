#include <string>
#include <list>
#include <iostream>

using namespace std;

void downsize(list<string>& names)
{
    list<string>::iterator i1, i2;
    i1 = names.begin();
    i2 = i1;
    i2++;
    while(i2 != names.end())
    {
        i1 = i2;
        i2++;
   //     cout << *i1 << " " << *i2 << endl;
        names.erase(i1);
        i1 =i2;
        if (i2 != names.end()) i2++;
    }
}

int main()
{  list<string> staff;

   staff.push_back("Cracker, Carl");
   staff.push_back("Hacker, Harry");
   staff.push_back("Lam, Larry");
   staff.push_back("Sandman, Susan");
   staff.push_back("S, Sonja");

   downsize(staff);

   for (list<string>::iterator pos = staff.begin();
            pos != staff.end(); pos++)
      cout << *pos << "\n";

   return 0;
}

