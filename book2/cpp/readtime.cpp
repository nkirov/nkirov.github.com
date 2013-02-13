// readtime.cpp
#include <iostream>
#include <sstream>
using namespace std;

string int_to_string(int n)
{ ostringstream outstr;
  outstr << n;
  return outstr.str();
}
void read_time(int& hours, int& minutes)
{ string line;
  getline(cin, line);
  istringstream instr(line);
  instr >> hours;
  minutes = 0;
  char ch;
  instr.get(ch);
  if (ch == ':') instr >> minutes;
  else instr.putback(ch);

  string suffix;
  instr >> suffix;
  if (suffix == "pm") hours = hours + 12;
}

string time_to_string(int hours, int minutes, bool am_pm)
{ string suffix;
  if (am_pm)
  { if (hours < 12) suffix = "am";
    else  { suffix = "pm"; hours = hours - 12; }
    if (hours == 0) hours = 12;
  }
  string result = int_to_string(hours) + ":";
  if (minutes < 10) result = result + "0";
  result = result + int_to_string(minutes);
  if (am_pm) result = result + " " + suffix;
  return result;
}

int main()
{ cout << "Please enter the time: ";
  int hours, minutes;
  read_time(hours, minutes);

  cout << "Using am/pm:   " << time_to_string(hours, minutes, true) << "\n";
  cout << "Military time: " << time_to_string(hours, minutes, false) << "\n";
  return 0;
}
