// overload.cpp
#include <iostream>
using namespace std;
#include "ccc_time.cpp"

long operator-(Time a, Time b)
{  return a.seconds_from(b);   }

Time operator+(Time a, long sec)
{  Time r = a;
   r.add_seconds(sec);
   return r;  }

bool operator==(Time a, Time b)
{  return a.seconds_from(b) == 0;  }

bool operator!=(Time a, Time b)
{  return a.seconds_from(b) != 0;  }

ostream& operator<<(ostream& out, Time& a)
{  out << a.get_hours() << ":";
   if (a.get_minutes() < 10) out << "0";
   out << a.get_minutes() << ":";
   if (a.get_seconds() < 10) out << "0";
   out << a.get_seconds();
   return out;    }

int main()
{  Time now;
   cout << "Now it is " << now << "\n";
   Time later = now + 1000;
   cout << "A thousand seconds later it is " << later << "\n";
   Time now2;
   if (now == now2)
      cout << "It still is " << now2 << "\n";
   if (now != now2)
      cout << "It is already " << now2 << "\n";
   cout << "Another " << later - now2 << " seconds until "
        << later << "\n";
   return 0;
}
