#include<iostream>
using namespace std;

class Person  {
public:
    Person(string n) { name = n; }
    string get_name() const
    { return name; }
private:
    string name;
};

class Student : virtual
      public Person {
public:
    Student(string n):Person(n)
    {  id = "sid"; }
    virtual string get_id() const
    { return id; }
private:
    string id;
};

class Employee :  virtual
      public Person{
public:
    Employee(string n):Person(n)
    { id = "eid"; }
    virtual string get_id() const
    { return id; }
private:
    string id;
};

class TeachingAssistant : public Employee, public Student {
public:
    TeachingAssistant(string n): Employee(n), Student(n),
    Person(n)
    {}
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
    TeachingAssistant* fred = new TeachingAssistant("Fred");
    Employee* new_hire = fred; // Legal, because a TeachingAssistant is-a Employee
    Student* advisee = fred;  // Legal, because a TeachingAssistant is-a Student
    cout << "Your name is " << fred->get_name() << endl;
    
    Student* mary = new Student("Mary");
 //   Student* mary = new TeachingAssistant();
    TeachingAssistant* lab_instructor = dynamic_cast<TeachingAssistant*>(mary);
    
    if (lab_instructor != NULL)
        cout << "Yes, mary is a TeachingAssistant. \n";
    else
        cout << "No, mary is not a TeachingAssistant. \n";
    
    return 0;
}
