
#include <iostream>
#include <string>
using namespace std;

template<typename T>
class A {
public:
    A(T aa):a(aa){}
    T geta() const { return a; }
private:
    T a;
};

class B : public A<int> {
public:
    B(int bb):A(bb){};
};

template<typename T>
class C : public A<int> {
public:
    C(T cc, int aa):A(aa){ c = cc; }
    T getc() const { return c; }
private:
    T c;
};

template<typename T>
class D : public A<T> {
public:
    D(T dd):A<T>(dd){}
};

int main()
{
    A<int> a1(10);
    B b1(20);
    cout << b1.geta() << endl;
    C<string> c1("abc", 30);
    cout << c1.geta() << " " << c1.getc() << endl;
    D<double> d1(0.5);
    cout << d1.geta() << endl;
   return 0;
}

