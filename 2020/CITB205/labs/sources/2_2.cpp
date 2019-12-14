//
//  2_2.cpp
//  
//
//  Created by Nikolay Kirov on 4.03.18.
//

#include <iostream>
#include <string>
using namespace std;

class Person {
public:
    Person(string, string);
    string get_name() const
    { return name; }
    string get_family() const
    { return family; }
    void read()
    { cin >> name >> family; }
    void write() const
    { cout << name << " " << family << endl; }
    
private:
    string name;
    string family;
};

class Student : public Person {
public:
    Student(string, string, int);
    string get_name() const
    { return Person::get_name(); }
    string get_family() const
    { return Person::get_family(); }
    int get_fn() const
    { return fn; }
    void set_fn(int nfn)
    { fn = nfn; }
    void read()
    { Person::read(); cin >> fn; }
    
    void write() const
    {
        cout << get_name() << " " << get_family()
            << " " << fn << endl;
    }
private:
    int fn;
};

bool comp_family(const Person &p1, const Person &p2)
{ return p1.get_family() == p2.get_family(); }

int main()
{
    Person alex("Alex", "Borov");
    Student bety("Beatris", "Clinton", 12345);
    Student mark("Mark", "Borov", 66666);
    alex.write();
    bety.write();
    cout << comp_family(alex, mark) << endl;
    cout << comp_family(bety, mark) << endl;
    alex.read();
    alex.write();
    bety.read();
    bety.write();
    return 0;
}

Person::Person(string n, string f)
{
    name = n;
    family = f;
}

Student::Student(string n, string f, int ffn)
: Person(n, f)
{
    fn = ffn;
}

