#include <iostream>
#include <string>

using namespace std;

class Employee {
public:
    Employee(string emp_name, double init_salary);
    void set_salary(double new_salary);
    string get_name() const;
    double get_salary() const;
    virtual void print() const;
private:
    string name;
    double salary;
};

class Manager : public Employee {
public:
    Manager(string n, double sal, string dept);
    string get_department() const;
    void print() const;
private:
    string department;
};

int main()
{
    Employee* e = new Manager("Sarah", 67000, "ABV");
// Explicitly converts pointer e from Employee* to pointer m from Manager*
    Manager* m = dynamic_cast<Manager*>(e);
    e->print();
    if (m != NULL) m->print();
    
    e = new Employee("Smith", 65000);
    m = dynamic_cast<Manager*>(e);
    if (m == NULL) cout << "NULL" << endl;

    return 0;
}

Employee::Employee(string emp_name, double init_salary)
{
    name = emp_name;
    salary = init_salary;
}

void Employee::set_salary(double new_salary)
{
    salary = new_salary;
}

string Employee::get_name() const
{
    return name;
}

double Employee::get_salary() const
{
    return salary;
}

void Employee::print() const
{
    cout << get_name() << " " << salary << endl;
}

Manager::Manager(string n, double sal, string dept)
: Employee(n, sal)
{
    department = dept;
}

string Manager::get_department() const
{
    return department;
}

void  Manager::print() const
{
    Employee::print();
    cout << department << endl;
}
