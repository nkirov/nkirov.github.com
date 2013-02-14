#include <iostream>

class Vector {
  public:
    enum { max = 32000 };
    class Range {
      public:
         int index;
         Range(int i):index(i){}
    };
    class Size {};
    Vector(int);
    int &operator[](int);
  private:
    int *p;
    int sz;
};

void f();

int main()
{
  cout << "begin main()\n";
  f();
  cout << "end main()\n";
  char ch=cin.get();
  return 0;
}

Vector::Vector(int s)
{
 cout << "Vector::Vector\n";
 if (s<0 || s>max) throw Size();
 sz = s;
 p = new int[sz];
}

int& Vector::operator[](int i)
{
 cout << "Vector::operator[](int)\n";
 if (i>0 && i<sz) return p[i];
 throw Range(i);
}

void use_vectors()
{
 cout << "use_vectors()\n";
 Vector v(10);

 int i;
 for (i=9; i<12; i++)
 {
  v[i]=i*i;
  cout << v[i] << "  ";
 }

 Vector vbad(-10);
 cout << "BAD\n";
 char ch=cin.get();
}

void f()
{
 cout << "begin f()\n";
 try { use_vectors(); }

 catch (Vector::Range r)
 {
  cout << "Index " << r.index << " out of range!\n";
  char ch=cin.get();
  exit(99);
 }
 catch (Vector::Size)
 {
  cout << "ERROR in the constructor Vector::Size\n";
  char ch=cin.get();
  exit(99);
 }
 cout << "end f()\n";
 char ch=cin.get();
}
