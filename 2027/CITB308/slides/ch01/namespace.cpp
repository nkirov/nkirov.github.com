#include<string>
#include<iostream>
namespace myglobals {
   int cat; 
   std::string dog = "bow wow";
}

int main()
{ myglobals::cat = 10;
  std::cout << myglobals::cat 
            << std::endl;
  return 0;    
}   
