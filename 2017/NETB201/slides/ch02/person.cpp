#include<iostream>
#include<string>
using namespace std;

class Person {       // base class  
private:
   string name;      // name
   string ssn;       // social security number
public: 
   Person(const string &nm, const string &ss);
   void print();     // print data
   string getName() // retrieve name
   { return name; }
}; 

class Student : public Person {     // derived class
private:
   string major;    // major subject
   int gradYear;    // graduate year
public:
   Student(const string &nm, const string &ss,
           const string &maj, int year);
   void print();                 // print data
   void changeMajor(string newMajor)     // change major
   { major = newMajor; }
 };
 
Person::Person(const string &nm, const string &ss)  
: name(nm), ssn(ss) {}           // initializer list

Student::Student(const string &nm, const string &ss,
      const string &maj, int year)
: Person(nm, ss),      // initialize Person data members
  major(maj),          // initialize member
  gradYear(year) {}    // initialize gradYear

void Person::print()    // definition of Person print
{ cout << name << " " << ssn << endl; }

void Student::print()   // definition of Student print
{ Person::print();      // first print Person data
  cout << major << " " << gradYear << endl;
}

int firstTest()
{  Person person("Adam", "000000");       // define a person 
   Student student("Eva", "000001", "Inf", 1);     // define a student
   cout << student.getName(); // invokes Person::getName()
   person.print();            // invokes Person::print();
   student.print();           // invokes Student::print();
   person.changeMajor("Math"); // ERROR!
   student.changeMajor("Math"); // OK
}
/* 
int secondTest()
{ Person* pp[100];  
  pp[0] = new Person("Adam", "000000"); 
  pp[1] = new Student("Eva", "000001", "Inf", 1);

  cout << pp[1]->getName();   // OK
  pp[0]->print();             // calls Person::print()
  pp[1]->print();             // ?????????
  pp[1]->changeMajor("Math"); // ERROR!
}
*/
int main()
{ firstTest();
  // secondTest();
  return 0;
}  
    
