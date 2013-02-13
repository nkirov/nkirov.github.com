// error.cpp
#include <iostream>
#include <string>
#include "error.h"
using namespace std;

void error(string message)
{ cout << "ERROR: " << message << ".\n";
  exit(1);
}
