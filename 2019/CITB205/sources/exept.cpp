#include <iostream>
#include <stdexcept>
using namespace std;

void f()
{  cout << "f" << endl;
    throw runtime_error("RTE");
}
    
void ff() throw ()
{   cout << "ff1" << endl;
    f();
    cout << "ff2" << endl;
}

int main()
{   try
    {  ff();
        cout << "main" << endl;
    }
    catch(runtime_error& r)  // runtime_error& r)
    { cout << "2. " << r.what() << endl;
    }
    return 0;
}
