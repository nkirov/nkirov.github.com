#include <iostream>
#include <iomanip>
#include <ctime>
using namespace std;

class Time {
public:
    Time(int, int, int);
    Time();
    int get_hours() const;
    int get_minutes() const;
    int get_seconds() const;
    int operator-(Time) const;
    Time operator+(int) const;
    bool operator==(Time) const;
    bool operator!=(Time) const;
    Time operator++();         // prefix
    Time operator++(int);      // postfix
    friend ostream& operator<<(ostream&, Time);
private:
    int time_in_secs;
    int seconds_from(Time t) const;
    void add_seconds(int s);
};

int remainder(int a, int n)
{
    if (a >= 0)
        return a % n;
    else
        return n - 1 - (-a - 1) % n;
}

Time::Time(int hour, int min, int sec)
{
    time_in_secs = 60L * 60 * hour + 60 * min + sec;
}

Time::Time()
{
    time_t now = time(0);
    struct tm& t = *localtime(&now);
    time_in_secs = 60L * 60 * t.tm_hour + 60 * t.tm_min + t.tm_sec;
}

int Time::get_hours() const
{
    return time_in_secs / (60 * 60);
}

int Time::get_minutes() const
{
    return (time_in_secs / 60) % 60;
}

int Time::get_seconds() const
{
    return time_in_secs % 60;
}

int Time::seconds_from(Time t) const
{
    return time_in_secs - t.time_in_secs;
}

void Time::add_seconds(int s)
{
    const int SECONDS_PER_DAY = 60 * 60 * 24;
    time_in_secs = remainder(time_in_secs + s, SECONDS_PER_DAY);
}

int Time::operator-(Time b) const
{  return this->seconds_from(b);
}

Time Time::operator+(int sec) const
{  Time r = *this;
   r.add_seconds(sec);
   return r;
}

bool Time::operator==(Time b) const
{  return this->seconds_from(b) == 0;
}

bool Time::operator!=(Time b) const
{  return !(*this == b);
}

Time Time::operator++()   // prefix
{  *this = *this + 1;
   return *this; 
}

Time Time::operator++(int dummy)  // postfix
{  Time t = *this;
   *this = *this + 1;
   return t;
}    

ostream& operator<<(ostream& out, Time a)
{  out << a.get_hours() << ":"
      << setw(2) << setfill('0') 
      << a.get_minutes() << ":"
      << setw(2) << a.get_seconds() << setfill(' ');
   return out;
} 

int main()
{  Time now;
   cout << "now: " << now << endl;
   Time later = now + 1000;
   cout << "later: " << later << endl;
   Time now2;
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
