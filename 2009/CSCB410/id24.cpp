// 24. Адаптери на контейнери - стек, опашка и опашка с приоритет
//
// Fig. 21.23: fig21_23.cpp
// Standard library adapter stack test program.
#include <iostream>

using std::cout;
using std::endl;

#include <stack>   // stack adapter definition
#include <vector>  // vector class-template definition
#include <list>    // list class-template definition

// popElements function-template prototype 
template< class T >
void popElements( T &stackRef );

int main()
{
   // stack with default underlying deque
   std::stack< int > intDequeStack;   

   // stack with underlying vector
   std::stack< int, std::vector< int > > intVectorStack;

   // stack with underlying list
   std::stack< int, std::list< int > > intListStack;

   // push the values 0-9 onto each stack 
   for ( int i = 0; i < 10; ++i ) {
      intDequeStack.push( i );
      intVectorStack.push( i );
      intListStack.push( i );

   } // end for

   // display and remove elements from each stack
   cout << "Popping from intDequeStack: ";
   popElements( intDequeStack );
   cout << "\nPopping from intVectorStack: ";
   popElements( intVectorStack );
   cout << "\nPopping from intListStack: ";
   popElements( intListStack );

   cout << endl;

   return 0;

} // end main

// pop elements from stack object to which stackRef refers
template< class T >
void popElements( T &stackRef )
{
   while ( !stackRef.empty() ) {
      cout << stackRef.top() << ' ';  // view top element
      stackRef.pop();                 // remove top element

   } // end while

} // end function popElements
/***************************/
// Fig. 21.24: fig21_24.cpp
// Standard library adapter queue test program.
#include <iostream>

using std::cout;
using std::endl;

#include <queue>  // queue adapter definition

int main()
{
   std::queue< double > values;
   
   // push elements onto queue values
   values.push( 3.2 );
   values.push( 9.8 );
   values.push( 5.4 );

   cout << "Popping from values: ";
   
   while ( !values.empty() ) {
      cout << values.front() << ' ';  // view front element
      values.pop();                   // remove element 

   } // end while

   cout << endl;

   return 0;

} // end main
/***********/
// Fig. 21.25: fig21_25.cpp
// Standard library adapter priority_queue test program.
#include <iostream>

using std::cout;
using std::endl;

#include <queue>  // priority_queue adapter definition

int main()
{
   std::priority_queue< double > priorities;
   
   // push elements onto priorities
   priorities.push( 3.2 );
   priorities.push( 9.8 );
   priorities.push( 5.4 );

   cout << "Popping from priorities: ";
   
   while ( !priorities.empty() ) {
      cout << priorities.top() << ' ';  // view top element
      priorities.pop();                 // remove top element

   } // end while

   cout << endl;

   return 0;

} // end main
/***********/

