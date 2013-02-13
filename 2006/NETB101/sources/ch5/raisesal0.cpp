#include <iostream>
using namespace std;

#include <ccc_empl.h>
/**
   Raise an employee salary 
   @param e employee receiving raise
   @param by the percentage of the raise
*/
/* experiments! */
//void raise_salary(Employee e, double by)
//void raise_salary(const Employee& e, double by)
//void raise_salary(Employee& e, double& by)
//void raise_salary(Employee& e, const double& by)
void raise_salary(Employee& e, double by)
{  
   double new_salary = e.get_salary() * (1 + by / 100);
   e.set_salary(new_salary);
}

int main()
{  
   Employee harry("Hacker, Harry", 45000.00);
   raise_salary(harry, 5);
   cout << harry.get_name() << "'s new salary: " 
        << harry.get_salary() << "\n";
   Employee joe("Johnson, Joe", 30000.00);
   raise_salary(joe, 7.5);
   cout << joe.get_name() << "'s new salary: " 
        << joe.get_salary() << "\n";
   return 0;
}
