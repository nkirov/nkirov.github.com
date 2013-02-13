#include <iostream>
#include <ctime>

int main()
{
  std::cout << "Please, enter your name: ";
  char name[255];
  clock();
  std::cin >> name;
  std::cout << clock() << " miliseconds.";  
  return 0;   
}
