#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Student {
public:
    Student(string nam, string fam, int fac);
    string get_name() const
    {
        return name;
    }
    string get_family() const
    {
        return family;
    }
    int get_f() const
    {
        return f;
    }
    void set_f(int fac)
    {
        f = fac;
    }
    void print() const
    {
        cout << name << " " << family
            << " " << f << endl;
    }

private:
    string name;
    string family;
    int f;
};

Student::Student(string nam, string fam, int fac)
{
    name = nam;
    family = fam;
    f = fac;
}

void print(vector<Student> v)
{
    for (int i = 0; i < v.size(); i++)
        v[i].print();
    cout << endl;
}

void del(vector<Student>& v, int fac)
{
    for (int i = 0; i < v.size(); i++)
        if(fac == v[i].get_f())
    {
        for (int j = i; j < v.size() - 1; j++)
            v[j] = v[j+1];
        v.pop_back();
        return;
    }
}

void add(vector<Student>& v, Student stu)
{
    v.push_back(stu);
}

int main()
{
    vector<Student> st;
    string nam, fam;
    int fac;
    while(cin >> nam >> fam >> fac)
        st.push_back(Student(nam, fam, fac));
    print(st);
    del(st, 55325);
    print(st);
    add(st, Student("Alex", "Draganov", 22222));
    print(st);

    cout << st[0].get_name() << " " << st[0].get_family() << endl;
    st[0].set_f(99999);
    print(st);

    return 0;
}
