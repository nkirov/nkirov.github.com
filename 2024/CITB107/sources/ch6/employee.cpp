#include <iostream>
using namespace std;

#include "ccc_time.h"

class Employee {
public:
   Employee(string employee_name, double initial_salary,
            int arrive_hour, int leave_hour);

   void set_salary(double new_salary);
   void raise_salary(double percent);

   string get_name() const;
   double get_salary() const;
   void print() const;
private:
   string name;
   double salary;
   Time arrive;
   Time leave;
};

Employee::Employee(string employee_name, double initial_salary,
   int arrive_hour, int leave_hour)
{  name = employee_name;
   salary = initial_salary;
   arrive = Time(arrive_hour, 0, 0);
   leave = Time(leave_hour, 0, 0);
}

void Employee::set_salary(double new_salary)
{  salary = new_salary;  
}     

string Employee::get_name() const
{  return name;
}

double Employee::get_salary() const
{  return salary;
}

void Employee::raise_salary(double percent)
{  salary = salary * (1 + percent / 100);
}

void raise_salary(Employee& e, double percent)
{  double new_salary = e.get_salary() * (1 + percent / 100);
   e.set_salary(new_salary);
}

void Employee::print() const
{  cout << "Name: " << get_name() << "; "
        << "Salary: " << get_salary() << "; "
    << "Arrive: " << arrive.get_hours() << "; "
    << "Leave: " << leave.get_hours() << "\n";
}

void print(const Employee &emp)
{ cout << "Name: " << emp.get_name() << "    "
    << "Salary: " << emp.get_salary() << "\n";
}

int main()
{ Employee harry("Harry", 1000, 8, 16);
  harry.raise_salary(10);
  harry.print();
  raise_salary(harry, 10);
  cout << "New salary " << harry.get_salary() << endl;
  print(harry);
  return 0;   
}    
