#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

#include "ccc_time.h"

class Clock {
public:
   Clock(bool use_military);
   string get_location() const;
   int get_hours() const;
   int get_minutes() const;
   bool is_military() const;
private:
   bool military;
};

Clock::Clock(bool use_military)
{   military = use_military;  }

string Clock::get_location() const
{   return "Local";   }

int Clock::get_hours() const
{  Time now;
   int hours = now.get_hours();
   if (military) return hours;
   if (hours == 0) return 12;
   if (hours > 12) return hours - 12;
   return hours;
}

int Clock::get_minutes() const
{  Time now;
   return now.get_minutes();
}

bool Clock::is_military() const
{   return military;  }
/*******************************************/

class TravelClock : public Clock  {
public:
   TravelClock(bool mil, string loc, int diff);
   string get_location() const;
   int get_hours() const;
private:
   string location;
   int time_difference;
};

TravelClock::TravelClock(bool mil, string loc, int diff)
   : Clock(mil)
{  location = loc;
   time_difference = diff;
   while (time_difference < 0) 
      time_difference = time_difference + 24;
}

string TravelClock::get_location() const
{   return location;  }

int TravelClock::get_hours() const
{  int h = Clock::get_hours();
   if (is_military())
      return (h + time_difference) % 24;
   else
   {  h = (h + time_difference) % 12;
      if (h == 0) return 12;
      else return h;
   }
}

int main()
{  Clock clock1(true);
   TravelClock clock2(true, "Rome", -1);
   TravelClock clock3(false, "Tokyo", 5);

   cout << clock1.get_location() << " time is " 
      << clock1.get_hours() << ":"
      << setw(2) << setfill('0') 
      << clock1.get_minutes() 
      << setfill(' ') << "\n";
   cout << clock2.get_location() << " time is " 
      << clock2.get_hours() << ":"
      << setw(2) << setfill('0') 
      << clock2.get_minutes() 
      << setfill(' ') << "\n";
   cout << clock3.get_location() << " time is " 
      << clock3.get_hours() << ":"
      << setw(2) << setfill('0') 
      << clock3.get_minutes() 
      << setfill(' ') << "\n";
   return 0;
}

