#include <iostream>
#include <stdexcept>
using namespace std;

void f()
{  cout << "f" << endl;
<<<<<<< HEAD
    throw 22;
=======
   throw runtime_error("RTE");
>>>>>>> dc1bbabcad3e9690096d9b4d99378e21207a82c2
}
    
void ff()
{   cout << "ff1" << endl;
    f();
    cout << "ff2" << endl;
}

int main()
{   try
    {  ff();
        cout << "main" << endl;
    }
    catch(int k)  // runtime_error& r)
    { cout << "2. " << k << endl;
    }
    return 0;
}
