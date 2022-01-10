#include<iostream>
using namespace std;

class Student {
public:
    Student()
    {  id = "sid"; }
    virtual string get_id() const
    { return id; }
private:
    string id;
};

class Employee {
public:
    Employee()
    { id = "eid"; }
    virtual string get_id() const
    { return id; }
private:
    string id;
};

class TeachingAssistant : public Employee, public Student {
public:
    TeachingAssistant():Employee(), Student(){}
//    string get_id() const;
    string student_id() const;
};

string TeachingAssistant::student_id() const
// Make student value available by a different name
{
    return Student::get_id();
}

int main()
{
    TeachingAssistant* fred = new TeachingAssistant();
    Employee* new_hire = fred; // Legal, because a TeachingAssistant is-a Employee
    Student* advisee = fred;  // Legal, because a TeachingAssistant is-a Student
    
     cout << "Your number is " << fred->get_id() << "\n";
    // Error, ambiguous member function name
    cout << "Your number is " << fred->Student::get_id() << "\n";
    
    cout << "Your number is " << new_hire->get_id() << "\n";
    cout << "Your number is " << advisee->get_id() << "\n";
    
    cout << "Your number is " << fred->student_id() << "\n";
    cout << "Your number is " << new_hire->student_id() << "\n";
    
    Student* mary = new Student();
 //   Student* mary = new TeachingAssistant();
    TeachingAssistant* lab_instructor = dynamic_cast<TeachingAssistant*>(mary);
    
    if (lab_instructor != NULL)
        cout << "Yes, mary is a TeachingAssistant. \n";
    else
        cout << "No, mary is not a TeachingAssistant. \n";
    
    return 0;
}
