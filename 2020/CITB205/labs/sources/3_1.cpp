#include <iostream>
#include <string>
#include <fstream>
using namespace std;

class Person {
public:
    string get_name() const
    {
        return name;
    }
    string get_family() const
    {
        return family;
    }
    virtual void read(istream &infile)
    {
        infile >> name >> family;
    }

    virtual void write(ostream & outfile)
    {
        outfile << name << " "
            << family << endl;
    }
private:
    string name;
    string family;
};

class Student : public Person {
public:
    int get_fn() const
    {
        return fn;
    }
    void read(istream &infile)
    {
        Person::read(infile);
        infile >> fn;
    }
     void write(ostream & outfile)
    {
        outfile << get_name() << " "
            << get_family() << " " << fn << endl;
    }
private:
    int fn;
};

class Teacher : public Person {
public:
    string get_sig() const
    {
        return sig;
    }
    void read(istream &infile)
    {
        Person::read(infile);
        infile >> sig;
    }
     void write(ostream & outfile)
    {
        outfile << get_name() << " "
            << get_family() << " " << sig << endl;
    }
private:
    string sig;
};

int main()
{
    Person* listt[100];
    int num = 0;

    string fsname;
    cout << "File of students: ";
    cin >> fsname;
    ifstream inf;
    inf.open(fsname.c_str());
    if (inf.fail())
    {
        cout << "error" << endl;
        return 1;
    }
    int ns;
    inf >> ns;
    for (int i = 0; i < ns; i++)
    {
       listt[num] = new Student();
       listt[num]->read(inf);
       num++;
    }
    inf.close();

    cout << "File of teachers: ";
    cin >> fsname;
    // ifstream inf;
    inf.open(fsname.c_str());
    if (inf.fail())
    {
        cout << "error2" << endl;
        return 1;
    }

    inf >> ns;
    for (int i = 0; i < ns; i++)
    {
       listt[num] = new Teacher();
       listt[num]->read(inf);
       num++;
    }
    inf.close();


    for (int i = 0; i < num; i++)
    {
       listt[i]->write(cout);
    }

    cout << "Out file: ";
    cin >> fsname;
    ofstream out;
    out.open(fsname.c_str());
    if (out.fail())
    {
        cout << "error3" << endl;
        return 1;
    }

    for(int i = 0; i < num; i++)
    {
        string s = listt[i]->get_name();
        if (s[0] == 'J')
            listt[i]->write(out);
    }
    out.close();
    return 0;
}

