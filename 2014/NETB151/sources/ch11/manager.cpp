#include <iostream>
#include <string>

using namespace std;

class Employee {
public:
    Employee(string emp_name, double init_salary);
    void set_salary(double new_salary);
    string get_name() const;
    double get_salary() const;
    void print() const;
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
    Employee harry("Harry", 500);
    harry.set_salary(550);
    harry.print();
    cout << harry.get_salary() << endl;
    
    Manager nino("Nino", 670, "Computer Science");
    nino.set_salary(1200);
    nino.print();
    cout << nino.get_salary() << " "
        << nino.get_department() << endl;
    
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