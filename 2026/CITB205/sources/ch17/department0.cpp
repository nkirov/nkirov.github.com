#include <string>
#include <iostream>
using namespace std;

#include "ccc_empl.h"

/**
   A department in an organization.
*/
class Department  {
public:
   Department(string n);
   void set_receptionist(Employee* e);
   void print() const;
private:
   string name;
   Employee* receptionist;
};

/**
   Constructs a department with a given name.
   @param n the department name
*/
Department::Department(string n)
{  name = n;
   receptionist = NULL;
}

/**
   Sets the receptionist for this department.
   @param e the receptionist
*/
void Department::set_receptionist(Employee* e)
{  receptionist = e;  }

/**
   Prints a description of this department.
*/
void Department::print() const
{  cout << "Name: " << name << "\n"
        << "Receptionist: ";
   if (receptionist == NULL) cout << "None";
   else
      cout << receptionist->get_name() << " "
           << receptionist->get_salary();
   cout << "\n";
}

int main()
{  Department shipping("Shipping");
   Employee* harry = new Employee("Hacker, Harry", 45000);
 //  shipping.set_receptionist(harry);
   
   Department qc("Quality Control"); 
   Employee* tina = new Employee("Tester, Tina", 50000);
   qc.set_receptionist(tina);
   tina->set_salary(55000);
   
   shipping.print();
   qc.print();
    
   delete harry;
   delete tina;
   return 0;
}
