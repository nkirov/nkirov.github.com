#include <iostream>
#include <string>
using namespace std;


class Person {
public:
 //   Person(string, string);
    void read()
    {
        cin >> name >> family;
    }
    void write() const
    {
        cout << name << " " << family << endl;
    }
    string get_family()
    {
        return family;
    }
private:
    string name;
    string family;
};

class Student : public Person {
public:
    void read()
    {
        Person::read();
        cin >> fn;
    }
    void write() const
    {
        Person::write();
        cout << fn << endl;
    }
private:
    int fn;
};

bool comp(Person p1, Person p2)
{
    return p1.get_family() == p2.get_family();
}

int main()
{
    Person ps;
    ps.read();
    ps.write();
    Student stt;
    stt.read();
    stt.write();
    cout << comp(ps, stt) << endl;
    return 0;
}

