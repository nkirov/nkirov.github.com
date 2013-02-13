// clocks.cpp 
#include "ccc_win.cpp" 
#include "ccc_time.cpp" 
const double PI = 3.141592653589793; 

class Clock { 
public: 
   Clock() {} 
   Clock(Point c, double r){ center = c; radius = r; } 
   void set_time(Time t){ current_time = t; } 
   void draw() const; 
private: 
   void draw_tick(double angle, double length) const; 
   void draw_hand(double angle, double length) const; 
   Time current_time; 
   Point center; 
   double radius; 
}; 

void Clock::draw_tick(double angle, double length) const 
{ double alpha = PI / 2 - 6 * angle * PI / 180; 
  Point from(center.get_x() + cos(alpha)*radius*(1-length), 
             center.get_y() + sin(alpha)*radius*(1-length)); 
  Point to(center.get_x() + cos(alpha)*radius, 
           center.get_y() + sin(alpha)*radius); 
  cwin << Line(from, to); 
} 

void Clock::draw_hand(double angle, double length) const 
{ double alpha = PI/2 - 6*angle*PI/180; 
  Point from = center; 
  Point to(center.get_x() + cos(alpha)*radius*length, 
           center.get_y() + sin(alpha)*radius*length); 
  cwin << Line(from, to); 
} 

void Clock::draw() const 
{ cwin << Circle(center, radius); 
  int i; 
  const double HOUR_TICK_LENGTH = 0.2; 
  const double MINUTE_TICK_LENGTH = 0.1; 
  const double HOUR_HAND_LENGTH = 0.6; 
  const double MINUTE_HAND_LENGTH = 0.75; 
  for (i = 0; i < 12; i++) 
  { draw_tick(i * 5, HOUR_TICK_LENGTH); 
    int j; 
    for (j = 1; j <= 4; j++) draw_tick(i*5 + j, MINUTE_TICK_LENGTH); 
  } 
  draw_hand(current_time.get_minutes(), MINUTE_HAND_LENGTH); 
  draw_hand((current_time.get_hours() + 
  current_time.get_minutes()/60.0)*5, HOUR_HAND_LENGTH); 
} 

class WorldClock : public Clock { 
public: 
   WorldClock() {} 
   WorldClock(string city_name, double hour_diff, Point center, double
radius); 
   void draw() const { Clock::draw(); cwin << city; } 
private: 
   Message city; 
}; 

WorldClock::WorldClock(string city_name, double hour_diff, Point center,
double radius) : Clock(center, radius) 
{ Point p = center; 
  p.move(0, -radius); 
  city = Message(p, city_name); 
  Time now; 
  const double SECONDS_PER_HOUR = 60 * 60; 
  now.add_seconds(hour_diff * SECONDS_PER_HOUR); 
  set_time(now); 
} 

int main() 
{ vector<WorldClock> clocks(6); 
/* populate clocks */ 
  clocks[0] = WorldClock("San Jose", 16, Point(-6.5, 5), 3); 
  clocks[1] = WorldClock("Taipei", 7, Point(0, 5), 3); 
  clocks[2] = WorldClock("Berlin", 1, Point(6.5, 5), 3); 
  clocks[3] = WorldClock("Cairo", 2, Point(-6.5, -5), 3); 
  clocks[4] = WorldClock("New York", 19, Point(0, -5), 3); 
  clocks[5] = WorldClock("Bombay", 4.5, Point(6.5, -5), 3); 

  int i; 
  for (i = 0; i < clocks.size(); i++) clocks[i].draw(); 
  return 0; 
} 
