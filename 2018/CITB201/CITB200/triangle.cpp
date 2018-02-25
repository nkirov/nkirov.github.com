// Решение на примерна задача за изпит 2
// Николай Киров

#include <iostream>
#include <cmath>
using namespace std;

template <typename T>
class Triangle {
public:
    Triangle()
    {
        tri = new T[3];
        equi1();
        cout << "Default constructor ";
        print();
    }
    Triangle(T a, T b, T c)
    {
        tri = new T[3];
        if (a + b > c && a + c > b && b + c > a)
        {
            if (a > b) swap(a,b);
            if (a > c) swap(a,c);
            if (b > c) swap(b,c);
            tri[0] = a; tri[1] = b; tri[2] = c; // increasing order
        }
        else equi1();
        cout << "Constructor ";
        print();
    }
    Triangle(const Triangle<T>& t)
    {
        tri = new T[3];
        for(int i=0; i < 3; i++) tri[i] = t.tri[i];
        cout << "Copy constructor ";
        print();
    }
    ~Triangle()
    {
        cout << "Destructor ";
        print();
        delete [] tri;
    }
    Triangle& operator=(const Triangle<T>& t)
    {
        if (this != &t)
        {
             for(int i=0; i < 3; i++) tri[i] = t.tri[i];
        }
        return *this;
    }
    double area() const
    {
        double p = (tri[0]+tri[1]+tri[2])/2.0;
        return sqrt(p*(p-tri[0])*(p-tri[1])*(p-tri[2]));
    }
    T perimeter() const
    {
        return tri[0] + tri[1] + tri[2];
    }
    Triangle<T>& operator++()
    {
        for(int i=0; i < 3; i++) tri[i] += 1;
        return *this;
    }
    Triangle<T> operator++(int dummy)
    {
        Triangle<T> t(*this);
        for(int i=0; i < 3; i++) tri[i] += 1;
        return t;
    }
    Triangle<T>& operator--()
    {
        for(int i=0; i < 3; i++) tri[i] -= 1;
        if(tri[0] <= 0 || tri[1] <= 0 || tri[2] <= 0) equi1();
        return *this;
    }
    Triangle<T> operator--(int dummy)
    {
        Triangle<T> t(*this);
        for(int i=0; i < 3; i++) tri[i] -= 1;
        if(tri[0] <= 0 || tri[1] <= 0 || tri[2] <= 0) equi1();
        return t;
    }
    bool operator>(const Triangle<T>& t) const
    {
        return area() > t.area();
    }
    bool operator<(const Triangle<T>& t) const
    {
        return area() < t.area();
    }
    Triangle<T> operator+(const Triangle<T>& t)
    {
        return Triangle<T>(tri[0]+t.tri[0], tri[1]+t.tri[1], tri[2]+t.tri[2]);
    }
    Triangle<T> operator+(T n)
    {
        return Triangle<T>(tri[0]+n, tri[1]+n, tri[2]+n);
    }
    Triangle<T> operator-(T n)
    {
        return Triangle<T>(tri[0]-n, tri[1]-n, tri[2]-n);
    }
    bool operator==(const Triangle<T>& t) const
    {
        return tri[0] == t.tri[0] && tri[1] == t.tri[1] && tri[2] == t.tri[2];
     // return tri[0]*t.tri[1] == tri[1]*t.tri[0] && ri[0]*t.tri[2] == tri[2]*t.tri[0];
    }
    bool operator!=(const Triangle<T>& t) const
    {
        return !(*this == t);
    }
    bool operator!() const
    {
        return tri[2]*tri[2] == tri[1]*tri[1] + tri[0]*tri[0];
   //   return tri[2]*tri[2] > tri[1]*tri[1] + tri[0]*tri[0];
   //   return tri[2]*tri[2] < tri[1]*tri[1] + tri[0]*tri[0];
    }
    bool operator&&(const Triangle<T>& t) const
    {
        return tri[0] == t.tri[0] || tri[1] == t.tri[1] || tri[2] == t.tri[2];
    }
    bool operator||(const Triangle<T>& t) const
    {
        return !(*this && t);
    }
    T operator*() const
    {
        return tri[2];
    }
    Triangle<T> operator*(T x)
    {
        return Triangle<T>(tri[0]*x, tri[1]*x, tri[2]*x);
    }
    Triangle<T> operator/(T x)
    {
        return Triangle<T>(tri[0]/x, tri[1]/x, tri[2]/x);
    }
    friend ostream& operator<<(ostream& out, const Triangle<T>& t)
    {
        out << t.tri[0] << " " << t.tri[1] << " " << t.tri[2] << endl;
        return out;
    }
    friend istream& operator>>(istream& inp, Triangle<T>& t);
private:
    T* tri;
    void equi1()
    {
        tri[0] = tri[1] = tri[2] = 1;
    }
    void swap(T& x, T& y)
    {
        T z = x; x = y; y = z;
    }
    
    void print()
    {
        cout << tri[0] << " " << tri[1] << " " << tri[2] << endl;
    }
};

Triangle<int> fun(Triangle<int> t1, Triangle<int>& t2)
{
    cout << "fun " << t1 << t2 << endl;
    return t1 + t2;
}

int main()
{
    Triangle<int> t1;
    cout << t1;
    Triangle<int> t2(5,4,3);
    cout << t2;
    Triangle<int> t3(t2);
    cout << t3;
    t3 = t1;
    cout << t3;
    cout << t2.area() << " " << t3.area() << endl;
    cout << ++t1 << t2++;
    cout << "t1++ t2-- " << t1 << t2;
    cout << --t1 << t2--;
    cout << t2 << !t2 << endl;
    
    cout << fun(t1, t2) << endl;
    
    return 0;
}
