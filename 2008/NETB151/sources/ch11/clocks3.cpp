#include <iostream>
#include <iomanip>
#include <string>
#include <vector>
using namespace std;

#include "ccc_time.h"

class Clock {
public:
   Clock(bool use_military);
   virtual string get_location() const;
   virtual int get_hours() const;
   int get_minutes() const;
   bool is_military() const;
private:
   bool military;
};

Clock::Clock(bool use_military)
{   military = use_military;  }

string Clock::get_location() const
{   return "Local";  }

int Clock::get_hours() const
{  Time now;
   int hours = now.get_hours();
   if (military) return hours;
   if (hours == 0)       return 12;
   else if (hours > 12)
      return hours - 12;
   else      return hours;
}

int Clock::get_minutes() const
{  Time now;
   return now.get_minutes();
}

bool Clock::is_military() const
{   return military;  }
/***************************************/

class TravelClock : public Clock {
public:
   TravelClock(bool mil, string loc, int diff);
   virtual string get_location() const;
   virtual int get_hours() const;
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
{  return location;  }

int TravelClock::get_hours() const
{  int h = get_hours();  //!!!!!!!!!!!!!!!!!!!!!
   if (is_military())
      return (h + time_difference) % 24;
   else
   {  h = (h + time_difference) % 12;
      if (h == 0) return 12;
      else return h;
   }
}

int main()
{  vector<Clock*> clocks(4);
   clocks[0] = new Clock(true);
   clocks[1] = new TravelClock(true, "Rome", -1);
   clocks[2] = new TravelClock(false, "Tokyo", 5);
   TravelClock t(true, "New York", -7);
   clocks[3] = &t;

   for (int i = 0; i < clocks.size(); i++)
   {
      cout << clocks[i]->get_location() << " time is " 
         << clocks[i]->get_hours() << ":"
         << setw(2) << setfill('0') 
         << clocks[i]->get_minutes() 
         << setfill(' ') << "\n";
   }
   return 0;
}
