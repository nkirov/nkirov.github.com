/* Два варианта за пресмятане на n! [1.2.5] */
// fact.cpp
#include <iostream>

unsigned long fact0(unsigned i)
{ unsigned long p = 1;
  for (int j = 1; j <=i; j++) p *= j;
  return p;
}

unsigned long fact1(unsigned i)
{ if (1 == i) return 1;
  return i * fact1(i - 1);
}

unsigned i;
unsigned long fact2()
{
    if (1 == i) return 1;
        return i-- * fact2(); // --i*fact();
}

unsigned n = 6;
int main()
{
  while( std::cin >> n )
  {  
     std::cout << "fact0: " << n << "! = " 
                            << fact0(n) << std::endl;
     std::cout << "fact1: " << n << "! = " 
                            << fact1(n) << std::endl;
     i=n; // i=n+1;
     std::cout << "fact2: " << n << "! = " 
                            << fact2() << std::endl;
  }
  return 0;
} 
