#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Car {
public:
    Car(string ss, double xx)
    {
        typ = ss; power = xx;
    }
    string get_typ() const
    { return typ; }
private:
    string typ;
    double power;
};

class Student {
public:
    Student(string n, string f, int fnn, Car* pc)
    {
        name = n; family = f; fn = fnn; car = pc;
    }
    string get_name() const
    { return name; }
    string get_family() const
    { return family; }
    Car* get_car() const
    { return car; }
    Car* set_car(Car *);
    void print();
private:
    string name;
    string family;
    int fn;
    Car* car;
};

void print(vector<Student*> ps)
{
    for(int i=0; i< ps.size(); i++)
        ps[i]->print();
}

int main()
{
    vector<Student*> ps;
    string n, f, c;
    int fn;
    while(cin >> n >> f >> fn >> c)
    {
        Car *cc = NULL;
        if (c != "-") cc = new Car(c, 1.0);
        Student *pss = new Student(n, f, fn, cc);
        ps.push_back(pss);
    }
    print(ps);
    Car *pcc = new Car("Toyota", 2.0);
    Car *pcc_old = ps[0]->set_car(pcc);
    delete pcc_old;
    print(ps);
    for(int i=0; i< ps.size(); i++)
    {
        delete ps[i]->get_car();
        delete ps[i];
    }
    return 0;
}

void Student::print()
{
    cout << name << " " << family << " " << fn;
    if (car != NULL) cout << " " << car->get_typ();
    cout << endl;
}

 Car* Student::set_car(Car *pcar)
 {
     Car* car_old = car;
     car = pcar;
     return car_old;
 }
