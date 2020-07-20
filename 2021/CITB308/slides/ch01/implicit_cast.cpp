// implicit_cast
#include <iostream>

int main()
{ int i = 3;
  double d = 4.8;
  double d3 = i / d;
  std::cout << "d3 = " << d3 << std::endl;
  int i3 = d3;              // dangerous!!!
  std::cout << "i3 = " << i3 << std::endl;
  double d4 = i / 2;       // dangerous!!!
  std::cout << "d4 = " << d4 << std::endl;  
  return 0;
}    
