#include <iostream>
using namespace std;

class Set {
public:
    Set()
    {
        ssize = 0;
        elements = new int[100];
    }
    Set(Set &);
    ~Set();
    Set & operator=(Set &);
    void add(int n)
    {
        if (contains(n)) return;
        if (ssize == 100) return;
        elements[ssize] = n;
        ssize++;
    }
    bool contains(int n) const
    {
        for(int i = 0; i < ssize; i++)
            if (elements[i] == n) return true;
        return false;
    }
    int get_size() const
    {
        return ssize;
    }

    void print() const
    {
        for(int i = 0; i < ssize; i++) cout << elements[i] << " ";
        cout << endl;
    }
private:
    int* elements;
    int ssize;
};

    Set::Set(Set &b)
    {
        ssize = b.ssize;
        elements = new int[100];
        for (int i = 0; i < ssize; i++) elements[i] = b.elements[i];
    }
    Set::~Set()
    {
        cout << "DD" << endl;
        delete elements;
    }
    Set& Set::operator=(Set &b)
    {
        if (elements == b.elements) return *this;
        ssize = b.ssize;
        for (int i = 0; i < ssize; i++) elements[i] = b.elements[i];
        return *this;
    }

int main()
{
    Set s;
    s.add(10);
    s.add(20);
    s.add(10);

    Set s1(s);
    s1.add(30);

    Set s2;
    cout << s2.get_size() << endl;
    s2 = s;
    cout << s2.get_size() << endl;

    s.print();
    s1.print();
    s2.print();
    return 0;
}
