// vector.cpp
#include<iostream>
#include<vector>

int main()
{  std::vector<int> scores(3);
   for (int i = 0; i < scores.size(); i++) 
       scores[i] = i*i;
   int k = 1;
   std::cout << scores[k] << " " << scores.at(k) << std::endl;
   k = 3;
//   std::cout << scores.at(k) << std::endl; 
   std::cout << scores[k] << std::endl;           
   return 0;
}       
