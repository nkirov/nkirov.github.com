// list1.cpp 
#include <iostream> 
#include <string> 
#include <list> 
using namespace std; 

int main() 
{  list<string> staff;           /* ������ �� ������ */ 

   staff.push_back("Cracker, Carl"); 
   staff.push_back("Hacker, Harry"); 
   staff.push_back("Lam, Larry"); 
   staff.push_back("Sandman, Susan"); 

   list<string>::iterator pos;            /* �������� �� ������ */ 

/* add a value in 4-th place */ 
   pos = staff.begin(); 
   pos++; 
   pos++; 
   pos++; 
   staff.insert(pos, "Reindeer, Rudolf"); 

/* remove the value in 2-nd place */ 
   pos = staff.begin(); 
   pos++; 
   staff.erase(pos); 

/* add a value at the end place */ 
   pos = staff.end(); 
   staff.insert(pos, "Zeider, Zeev"); 

   /* print all values */         /* ��������� �� ������ */ 
   for (pos = staff.begin(); pos != staff.end(); pos++) 
      cout << *pos << "\n";      /* ���������� �� �������� ������� */ 
   return 0; 
} 
