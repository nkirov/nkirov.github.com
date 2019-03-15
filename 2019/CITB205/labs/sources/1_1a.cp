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
    void set_f(int);
    void print();

private:
    string name;
    string family;
    int f;
};

void Student::set_f(int ff)
{
    f = ff;
}

void Student::print()
{
    cout << name << " "<< family << " " << f << endl;
}

Student::Student(string nam, string fam, int fac)
{
    name = nam; family = fam; f = fac;
}

void print(vector<Student> v)
{

    for(int i = 0; i < v.size(); i++)
        v[i].print();
/*
        cout << v[i].get_name() << " "
            << v[i].get_family() << " "
            << v[i].get_f() << endl;
            */

    cout << endl;
}

void del(vector<Student>& v, int fd)
{
     for(int i = 0; i < v.size(); i++)
     {
         if (fd == v[i].get_f())
         {
             for(int j = i; j < v.size() - 1; j++)
                v[j] = v[j+1];
             v.pop_back();
             return;
         }
     }
     return;
}

int main()
{
    vector<Student> ls;
    string nam, fam;
    int fac;

    while(cin >> nam >> fam >> fac)
    {
        ls.push_back(Student(nam, fam, fac));
    }
    print(ls);
    del(ls, 45353);
    print(ls);
    ls[0].set_f(11111);
    ls[0].print();
    return 0;
}
