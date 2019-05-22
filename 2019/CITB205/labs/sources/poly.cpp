#include <iostream>
#include <vector>
#include <fstream>
using namespace std;

template<typename T>
class Poly {
public:
    Poly(vector<T> v)
    {
        n = v.size() - 1;
        a = new T[n + 1];
        for(int i = 0; i <= n; i++)
            a[i] = v[i];
    }
    Poly(int nn)
    {
        n = nn;
        a = new T[n + 1];
    }
    Poly(const Poly<T>& p)
    {
        n = p.n;
        a = new T[n+1];
        for(int i = 0; i <= n; i++)
            a[i] = p.a[i];
    }
    ~Poly()
    {
            delete [] a;
    }
    Poly<T>& operator=(const Poly<T>& p)
    {
        cout << "lll" << endl;
        if (this == &p) return *this;
        delete [] a;
        n = p.n;
        for(int i = 0; i <= n; i++)
            a[i] = p.a[i];
            cout << "zzz" << endl;
        return *this;
    }
    T value(T x) const
    {
        T val = a[n];
        for(int i = n - 1; i >= 0; i--)
        {
            val = val*x + a[i];
        }
        return val;
    }
    int power() const
    {
        return n;
    }
    Poly<T> derivative()
    {
        Poly<T> p(n-1);
        for(int i = 0; i <= n-1; i++)
            p.a[i] = a[i+1]*(i+1);
        return p;
    }
    Poly<T> operator+(const Poly& p) const;
 //   friend ostream& operator<<(ostream& out, const Poly<T>& p);
 //   friend istream& operator>>(istream& in, Poly<T>& p);
    Poly<T> operator*(T k) const;
    bool operator==(const Poly<T>& p) const;
    void write(ostream &out) const
    {
        for(int i = 0; i <= n; i++)
            out << a[i] << " ";
        out << endl;
    }

private:
    T* a; // n + 1
    int n;
};

template<typename T>
ostream& operator<<(ostream& out, const Poly<T>& p)
{
    p.write(out);
    return out;
}

int main()
{
    vector<int> v;
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    Poly<int> p(v);

    cout << p.value(0) << " " << p.value(1) << endl;
    cout << p << endl;
    cout << p.derivative() << endl;
    Poly<int> q(p);
    cout << q << endl;
    q = q.derivative();
    cout << q << endl;
    return 0;
}
