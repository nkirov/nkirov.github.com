#include <iostream>
#include <string>
using namespace std;

class A {
public:
    A(int aa):a(aa){}
    int geta() const { return a; }
private:
    int a;
};

template<typename T>
class B : public A {
public:
    B(T bb, int aa):A(aa),b(bb){}
    T getb() const { return b; }
private:
    T b;
};

int main()
{
    A a1(10);
    cout << a1.geta() << endl;
    B<string> b1("abc", 20);
    cout << b1.geta() << " " << b1.getb() << endl;
   return 0;
}

