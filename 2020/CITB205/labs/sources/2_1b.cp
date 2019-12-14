#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Car {
public:
    Car(string m, int y):model(m), year(y) {}
    string get_model()
    { return model; }
private:
    string model;
    int year;
};

class Student {
public:
    Student(string n, int f, Car* c)
    {
        name = n; fn = f; car = c;
    }
    string get_name() const
    { return name; }
    Car* get_car() const
    { return car; }
    void new_car(Car* nc)
    {
        delete car;
        car = nc;
    }
    void print() const
    {
        cout << name << " " << fn << " ";
        if (car == NULL) cout << endl;
        else cout << car->get_model() << endl;
    }
private:
    string name;
    int fn;
    Car* car;
};

void print(vector<Student*> s)
{
    for (int i = 0; i < s.size(); i++)
        s[i]->print();
}

int main()
{
    vector<Student*> st;
    string s1, s2, sc;
    int f;
    while(cin >> s1 >> s2 >> f >> sc)
    {
        Car* pcar = NULL;
        if (sc != "-") pcar = new Car(sc, 2015);
        Student* pst = new Student(s1 + " " + s2, f, pcar);
        st.push_back(pst);
    }
    print(st);
    Car* ncar = new Car("Audi", 2018);
    st[2]->new_car(ncar);
    st[2]->print();
    st[2]->new_car(NULL);
    st[2]->print();

    return 0;
}
