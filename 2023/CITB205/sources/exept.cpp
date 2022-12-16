#include <iostream>
#include <stdexcept>
using namespace std;

void f()
{
    cout << "f" << endl;
    throw 22;
    throw runtime_error("RTE");
}
    
void ff()
{
    cout << "ff1" << endl;
    f();
    cout << "ff2" << endl;
}

int main()
{   try
    {
        ff();
        cout << "main" << endl;
    }
    catch(int k)  // runtime_error& r)
    {
        cout << "2. " << k << endl;
    }
    return 0;
}
