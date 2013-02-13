#include <iostream>
#include <iomanip>
using namespace std;

#include "ccc_time.h"

class Time_new : public Time {
public:
  int operator-(Time_new b) const;
  Time_new operator+(int sec) const;
  bool operator==(Time_new b) const;
  bool operator!=(Time_new b) const;
  Time_new operator++();   // prefix
  Time_new operator++(int dummy);  // postfix
  friend ostream& operator<<(ostream& out, Time_new a);             
};

/**
   Compute the number of seconds between two points in time.
   @param b another point in time
   @return the number of seconds that a is away from b
*/
int Time_new::operator-(Time_new b) const
{  return this->seconds_from(b);
}

/**
   Compute a point in time that is some number of seconds away.
   @param sec the seconds to add
   @return a point in time that is sec seconds away from a
*/
Time_new Time_new::operator+(int sec) const
{  Time_new r = *this;
   r.add_seconds(sec);
   return r;
}

/**
   Compare two points in time
   @param b another point in time
   @return true if they are the same
*/
bool Time_new::operator==(Time_new b) const
{  return this->seconds_from(b) == 0;
}

/**
   Compare two points in time.
   @param b another point in time
   @return true if they are the different
*/
bool Time_new::operator!=(Time_new b) const
{  return !(*this == b);
}

/**
   Prefix increment by 1 second.
   @return the new value
*/
Time_new Time_new::operator++()   // prefix
{  *this = *this + 1;
   return *this; 
}

/**
   Postfix increment by 1 second.
   @return the old value
*/    
Time_new Time_new::operator++(int dummy)  // postfix
{  Time_new t = *this;
   *this = *this + 1;
   return t;
}    

/**
   Print a Time object
   @param out an output stream
   @param a a point in time
   @return out
*/
ostream& operator<<(ostream& out, Time_new a)
{  out << a.get_hours() << ":"
      << setw(2) << setfill('0') 
      << a.get_minutes() << ":"
      << setw(2) << a.get_seconds() << setfill(' ');
   return out;
} 

int main()
{  Time_new now;
   cout << "now: " << now << endl;
   Time_new later = now + 1000;
   cout << "later: " << later << endl;
   Time_new now2;
   if (now == now2)
      cout << "now == now2: " << now2 << endl;
   if (now != now2)
      cout << "now != now2 " << now2 << endl;
   cout << "now++: " << now++ 
        << "  ++now2: " << ++now2 << endl;
   cout << "now: " << now << " now2: " << now2 << endl;
   cout << "later - now2: " << later - now2 << endl;   
   return 0;
}
