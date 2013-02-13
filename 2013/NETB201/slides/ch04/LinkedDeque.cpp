#include <iostream>
#include "LinkedDeque.h"
using namespace std;

int main()
{  LinkedDeque<string> names;
   try 
   {  names.print();
      names.insertFirst("Assen");
      names.print();
      names.insertFirst("Kristina");
      names.print();
      names.insertFirst("Viktor");
      names.print();
      cout << " First: " << names.first() << endl;
      names.removeLast();
      names.print();
      names.removeLast();
      names.print();
      names.removeLast();
      names.print();
      names.removeLast();
      names.print();
      names.removeLast();
   }
   catch(DequeEmptyException e)
   {  cerr << e;
      return 1;          
   }             
   return 0;   
}    
