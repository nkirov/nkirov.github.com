
#include<iostream>
using namespace std;

int hashCode(int x)
{ return x; }

int hashCode(long x)
{  typedef unsigned long ulong;
    return hashCode(static_cast<int>(static_cast<ulong>(x) >> 32)
                    + static_cast<int>(x));
}

int hashCode(const char* p, int len) // hash a character array
{ unsigned int h = 0;
    for (int i = 0; i < len; i++)
    { h = (h << 5)|(h >> 27);          // 5-bit cyclic shift
        h += static_cast<unsigned int>(p[i]);
                                    // add in next character
    }
    return hashCode(static_cast<int>(h));
}

int hashCode(const double& x)       // hash a double
{ int len = sizeof(x);
    const char* p = reinterpret_cast<const char *>(&x);
    return hashCode(p, len);
}

int main()
{
    for (double x = 0; x < 5; x += 0.3)
        cout << hashCode(x) << " ";
    return 0;
}    
