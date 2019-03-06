#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Car {
public:
     Car(string m, int c)
     {
         model = m;
         color = c;
     }
     string get_model() const
     {
         return model;
     }
     int get_color() const
     {
         return color;
     }
private:
    string model;
    int color;
};

class Student {
public:
    Student(string n, int f, Car* cp):name(n),
        fn(f)
        {
            car = cp;
        }
    string get_name() const
    {
        return name;
    }
    int get_fn() const
    {
        return fn;
    }
    Car* get_car() const
    {
        return car;
    }
    void new_car(Car * pc)
    {
        car = pc;
    }
    void print() const
    {
        cout << name << " " << fn << endl;
        if (car != NULL) cout << car->get_model() << endl;
    }
private:
    string name;
    int fn;
    Car *car;
};

void print(vector<Student*> st)
{
    for (int i = 0; i < st.size(); i++)
        st[i]->print();
}

int main()
{
    vector<Student*> st;
    string s1, s2, sc;
    int k;
    while(cin >> s1 >> s2 >> k >> sc)
    {
        Car* pcc;
        if (sc == "-") pcc = NULL;
        else pcc = new Car(sc, 1);
        Student* pss = new Student(s1 + " " + s2, k, pcc);
        st.push_back(pss);
  //  st.push_back(new Student(s1 + " " + s2, k,
   //     (sc == "-") ? NULL : (new Car(sc, 1))));
    }
    print(st);
    return 0;
}
