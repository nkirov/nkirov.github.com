//21. Стандартна библиотека със шаблони: въведение в STL, 
//    контейнери-редици 
//
// Fig. 21.5: fig21_05.cpp
// Demonstrating input and output with iterators.
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <iterator>  // ostream_iterator and istream_iterator

int main()
{
   cout << "Enter two integers: ";

   // create istream_iterator for reading int values from cin
   std::istream_iterator< int > inputInt( cin );

   int number1 = *inputInt;  // read int from standard input
   ++inputInt;          // move iterator to next input value
   int number2 = *inputInt;  // read int from standard input

   // create ostream_iterator for writing int values to cout
   std::ostream_iterator< int > outputInt( cout );

   cout << "The sum is: ";
   *outputInt = number1 + number2;  // output result to cout
   cout << endl;

   return 0;

} // end main
/***********/
// Fig. 21.14: fig21_14.cpp
// Demonstrating standard library vector class template.
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <vector>  // vector class-template definition

// prototype for function template printVector
template < class T >
void printVector( const std::vector< T > &integers2 );

int main()
{
   const int SIZE = 6;   
   int array[ SIZE ] = { 1, 2, 3, 4, 5, 6 };

   std::vector< int > integers;

   cout << "The initial size of integers is: " 
        << integers.size()
        << "\nThe initial capacity of integers is: " 
        << integers.capacity();

   // function push_back is in every sequence collection
   integers.push_back( 2 );  
   integers.push_back( 3 );  
   integers.push_back( 4 );

   cout << "\nThe size of integers is: " << integers.size()
        << "\nThe capacity of integers is: " 
        << integers.capacity();

   cout << "\n\nOutput array using pointer notation: ";

   for ( int *ptr = array; ptr != array + SIZE; ++ptr )
      cout << *ptr << ' ';

   cout << "\nOutput vector using iterator notation: ";
   printVector( integers );

   cout << "\nReversed contents of vector integers: ";

   std::vector< int >::reverse_iterator reverseIterator;

   for ( reverseIterator = integers.rbegin(); 
         reverseIterator!= integers.rend(); 
         ++reverseIterator )
      cout << *reverseIterator << ' ';

   cout << endl;

   return 0;

} // end main

// function template for outputting vector elements
template < class T >
void printVector( const std::vector< T > &integers2 )
{
   std::vector< T >::const_iterator constIterator;

   for ( constIterator = integers2.begin(); 
         constIterator != integers2.end(); 
         constIterator++ )
      cout << *constIterator << ' ';

} // end function printVector
/**********/
// Fig. 21.15: fig21_15.cpp
// Testing Standard Library vector class template 
// element-manipulation functions.
#include <iostream>

using std::cout;
using std::endl;

#include <vector>     // vector class-template definition
#include <algorithm>  // copy algorithm

int main()
{
   const int SIZE = 6;   
   int array[ SIZE ] = { 1, 2, 3, 4, 5, 6 };

   std::vector< int > integers( array, array + SIZE );
   std::ostream_iterator< int > output( cout, " " );

   cout << "Vector integers contains: ";
   std::copy( integers.begin(), integers.end(), output );

   cout << "\nFirst element of integers: " << integers.front()
        << "\nLast element of integers: " << integers.back();

   integers[ 0 ] = 7;      // set first element to 7
   integers.at( 2 ) = 10;  // set element at position 2 to 10

   // insert 22 as 2nd element
   integers.insert( integers.begin() + 1, 22 );  

   cout << "\n\nContents of vector integers after changes: ";
   std::copy( integers.begin(), integers.end(), output );

   // access out-of-range element
   try {
      integers.at( 100 ) = 777;   

   } // end try

   // catch out_of_range exception
   catch ( std::out_of_range outOfRange ) {
      cout << "\n\nException: " << outOfRange.what();

   } // end catch

   // erase first element
   integers.erase( integers.begin() );
   cout << "\n\nVector integers after erasing first element: ";
   std::copy( integers.begin(), integers.end(), output );

   // erase remaining elements
   integers.erase( integers.begin(), integers.end() );
   cout << "\nAfter erasing all elements, vector integers " 
        << ( integers.empty() ? "is" : "is not" ) << " empty";

   // insert elements from array
   integers.insert( integers.begin(), array, array + SIZE );
   cout << "\n\nContents of vector integers before clear: ";
   std::copy( integers.begin(), integers.end(), output );

   // empty integers; clear calls erase to empty a collection
   integers.clear();  
   cout << "\nAfter clear, vector integers " 
        << ( integers.empty() ? "is" : "is not" ) << " empty";

   cout << endl;

   return 0;

} // end main
/************/
// Fig. 21.17: fig21_17.cpp
// Standard library list class template test program.
#include <iostream>

using std::cout;
using std::endl;

#include <list>       // list class-template definition
#include <algorithm>  // copy algorithm

// prototype for function template printList
template < class T >
void printList( const std::list< T > &listRef );

int main()
{ 
   const int SIZE = 4;
   int array[ SIZE ] = { 2, 6, 4, 8 };

   std::list< int > values;
   std::list< int > otherValues;

   // insert items in values
   values.push_front( 1 );
   values.push_front( 2 );
   values.push_back( 4 );
   values.push_back( 3 );
   
   cout << "values contains: ";
   printList( values );

   values.sort();  // sort values

   cout << "\nvalues after sorting contains: ";
   printList( values );
  
   // insert elements of array into otherValues
   otherValues.insert( otherValues.begin(), 
      array, array + SIZE );

   cout << "\nAfter insert, otherValues contains: ";
   printList( otherValues );

   // remove otherValues elements and insert at end of values
   values.splice( values.end(), otherValues );
   
   cout << "\nAfter splice, values contains: ";
   printList( values );

   values.sort();  // sort values

   cout << "\nAfter sort, values contains: ";
   printList( values );

   // insert elements of array into otherValues
   otherValues.insert( otherValues.begin(), 
      array, array + SIZE );
   otherValues.sort();
   
   cout << "\nAfter insert, otherValues contains: ";
   printList( otherValues );
   
   // remove otherValues elements and insert into values 
   // in sorted order
   values.merge( otherValues );
   
   cout << "\nAfter merge:\n   values contains: ";
   printList( values );
   cout << "\n   otherValues contains: ";
   printList( otherValues );

   values.pop_front();  // remove element from front
   values.pop_back();   // remove element from back
   
   cout << "\nAfter pop_front and pop_back:" 
        << "\n   values contains: ";
   printList( values );
   
   values.unique();  // remove duplicate elements
   
   cout << "\nAfter unique, values contains: ";
   printList( values );

   // swap elements of values and otherValues
   values.swap( otherValues );
   
   cout << "\nAfter swap:\n   values contains: ";
   printList( values );
   cout << "\n   otherValues contains: ";
   printList( otherValues );

   // replace contents of values with elements of otherValues
   values.assign( otherValues.begin(), otherValues.end() );
   
   cout << "\nAfter assign, values contains: ";
   printList( values );

   // remove otherValues elements and insert into values 
   // in sorted order
   values.merge( otherValues ); 
   
   cout << "\nAfter merge, values contains: ";
   printList( values ); 
   
   values.remove( 4 );  // remove all 4s
   
   cout << "\nAfter remove( 4 ), values contains: ";
   printList( values );

   cout << endl;

   return 0;

} // end main

// printList function template definition; uses 
// ostream_iterator and copy algorithm to output list elements
template < class T >
void printList( const std::list< T > &listRef )
{
   if ( listRef.empty() )
      cout << "List is empty";

   else {
      std::ostream_iterator< T > output( cout, " " );
      std::copy( listRef.begin(), listRef.end(), output );

   } // end else

} // end function printList
/*************************/
// Fig. 21.18: fig21_18.cpp
// Standard library class deque test program.
#include <iostream>

using std::cout;
using std::endl;

#include <deque>      // deque class-template definition
#include <algorithm>  // copy algorithm

int main()
{ 
   std::deque< double > values;
   std::ostream_iterator< double > output( cout, " " );

   // insert elements in values
   values.push_front( 2.2 );
   values.push_front( 3.5 );
   values.push_back( 1.1 );

   cout << "values contains: ";

   // use subscript operator to obtain elements of values
   for ( int i = 0; i < values.size(); ++i )
      cout << values[ i ] << ' ';

   values.pop_front();  // remove first element

   cout << "\nAfter pop_front, values contains: ";
   std::copy( values.begin(), values.end(), output );

   // use subscript operator to modify element at location 1
   values[ 1 ] = 5.4;

   cout << "\nAfter values[ 1 ] = 5.4, values contains: ";
   std::copy( values.begin(), values.end(), output );
   
   cout << endl;

   return 0;

} // end main
