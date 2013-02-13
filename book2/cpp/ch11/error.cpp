#include <iostream>
#include <string>

using namespace std;


#include "error.h"

void error(string message)
/* PURPOSE:  Print an error message
   RECEIVES: message - information about the error
*/
{  cout << "ERROR: " << message << ".\n";
   exit(1);
}
