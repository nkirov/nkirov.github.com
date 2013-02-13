#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main()
{
    double r = sqrt(2.0);			
    if (r * r == 2)
    {
       cout << "sqrt(2) squared is 2" << endl;
    }
    else
    {
        cout << "sqrt(2) squared is not 2 but "
               << setprecision(18) << r * r << endl;
    }
    
    const double EPSILON = 1E-14;
	if (fabs(r * r - 2) < EPSILON)
	{
	   cout << "sqrt(2) squared is approximately 2.0" << endl;
	}

    return 0;
}
