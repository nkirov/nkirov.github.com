// dynamic.cpp
#include <iostream>
#include <vector>
#include <typeinfo>
using namespace std;

class Employee {
public:
    Employee(string, double);
    void set_salary(double);
    string get_name() const;
    double get_salary() const;
    virtual void print() const;
 //   virtual void set_bonus(double) = 0;
private:
    string name;
    double salary;
};

class Manager : public Employee {
public:
    Manager(string n, double sal, string dept);
    string get_department() const;
    virtual void print() const;
    void set_bonus(double b)
    {
        set_salary(get_salary() + b);
    }
private:
    string department;
};

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

void test_dynamic_cast(vector<Employee*> department)
{
    for (int i = 0; i < department.size(); i++)
    {
        Manager* m = dynamic_cast<Manager*>(department[i]);
        if (m != NULL)
        {
            cout << "Employee " << department[i]->get_name()
            << " is a manager.\n";
            m->set_bonus(2000); // Can now invoke manager member functions
        }
        else
            cout << "Employee " << department[i]->get_name()
            << " is not a manager.\n";
    }
}

void test_typeid(vector<Employee*> department)
{
    for (int i = 0; i < department.size(); i++)
        cout << typeid(*department[i]).name() << "\n";
    
    for (int i = 0; i < department.size(); i++)
    {
        if (typeid(*department[i]) == typeid(Manager))
            cout << "Employee " << department[i]->get_name()
            << " is a manager. \n";
        else
            cout << "Employee " << department[i]->get_name()
            << " is not a manager. \n";
    }
}

int main()
{
    // Implicitly converts from Manager to Employee
    Employee* e = new Manager("Sarah", 67000, "A");
    // Explicitly converts from Employee to Manager
    Manager* m = dynamic_cast<Manager*>(e);
    
  //  m = e; // ERROR!
    e = m;
    m = static_cast<Manager*>(e);
    e = static_cast<Employee*>(m);
    
    vector<Employee*> department;
    department.push_back(e);
    department.push_back(new Employee("Harry", 30000));
    department.push_back(new Manager("John", 60000, "B"));
    
    test_dynamic_cast(department);
    test_typeid(department);
    
    return 0;
}
