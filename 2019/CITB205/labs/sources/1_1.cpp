//
//  1_1.cpp
//  
//
//  Created by Nikolay Kirov on 27.02.18.
//

#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Student {
public:
    Student(string, string, int);
    string get_name() const
    { return name; }
    string get_family() const
    { return family; }
    int get_fn() const
    { return fn; }
    void set_fn(int nfn)
    { fn = nfn; }
    void print() const;
private:
    string name;
    string family;
    int fn;
};

void remove(vector<Student> &ss, int k)
{
    for(int i = 0; i < ss.size(); i++)
        if(k == ss[i].get_fn())
        {
            for(int j = i; j < ss.size() - 1; j++) ss[j] = ss[j+1];
            ss.pop_back();
            return;
        }
    return;
}

void add(vector<Student> &ss, const Student &st)
{
    ss.push_back(st);
}

int main()
{
    vector<Student> s;
    string n, f;
    int k;
    while(cin >> n >> f >> k)
        s.push_back(Student(n, f, k));
    for(int i = 0; i < s.size(); i++) s[i].print();
    cout << endl;
    
    s[0].set_fn(11111);
    
    add(s, Student("Maja", "Manolova", 99999));
    for(int i = 0; i < s.size(); i++) s[i].print();
    cout << endl;
    
    remove(s, 45353);
    for(int i = 0; i < s.size(); i++) s[i].print();
    cout << endl;
    
    remove(s, 11111);
    for(int i = 0; i < s.size(); i++) s[i].print();
    
    return 0;
}

Student::Student(string n, string f, int k)
{
    name = n;
    family = f;
    fn = k;
}

 void Student::print() const
{
    cout << get_name() << " "
    << get_family() << " "
    << fn << endl;
}
