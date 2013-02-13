// 25. Алгоритми и функционални класове.
//
// Fig. 21.26: fig21_26.cpp
// Standard library algorithms fill, fill_n, generate
// and generate_n.
#include <iostream>

using std::cout;
using std::endl;

#include <algorithm>  // algorithm definitions
#include <vector>     // vector class-template definition

char nextLetter();    // prototype

int main()
{
   std::vector< char > chars( 10 );
   std::ostream_iterator< char > output( cout, " " );

   // fill chars with 5s
   std::fill( chars.begin(), chars.end(), '5' );

   cout << "Vector chars after filling with 5s:\n";
   std::copy( chars.begin(), chars.end(), output );

   // fill first five elements of chars with As
   std::fill_n( chars.begin(), 5, 'A' );

   cout << "\n\nVector chars after filling five elements"
        << " with As:\n";
   std::copy( chars.begin(), chars.end(), output );

   // generate values for all elements of chars with nextLetter
   std::generate( chars.begin(), chars.end(), nextLetter );

   cout << "\n\nVector chars after generating letters A-J:\n";
   std::copy( chars.begin(), chars.end(), output );

   // generate values for first five elements of chars 
   // with nextLetter
   std::generate_n( chars.begin(), 5, nextLetter );

   cout << "\n\nVector chars after generating K-O for the"
        << " first five elements:\n";
   std::copy( chars.begin(), chars.end(), output );

   cout << endl;

   return 0;

} // end main

// returns next letter in the alphabet (starts with A)
char nextLetter()
{
   static char letter = 'A';
   return letter++;

} // end function nextLetter
/**************************/
// Fig. 21.27: fig21_27.cpp
// Standard library functions equal, 
// mismatch and lexicographical_compare.
#include <iostream>

using std::cout;
using std::endl;

#include <algorithm>  // algorithm definitions
#include <vector>     // vector class-template definition

int main()
{
   const int SIZE = 10;
   int a1[ SIZE ] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
   int a2[ SIZE ] = { 1, 2, 3, 4, 1000, 6, 7, 8, 9, 10 };

   std::vector< int > v1( a1, a1 + SIZE );
   std::vector< int > v2( a1, a1 + SIZE );
   std::vector< int > v3( a2, a2 + SIZE );

   std::ostream_iterator< int > output( cout, " " );

   cout << "Vector v1 contains: ";
   std::copy( v1.begin(), v1.end(), output );
   cout << "\nVector v2 contains: ";
   std::copy( v2.begin(), v2.end(), output );
   cout << "\nVector v3 contains: ";
   std::copy( v3.begin(), v3.end(), output );

   // compare vectors v1 and v2 for equality
   bool result = 
      std::equal( v1.begin(), v1.end(), v2.begin() );

   cout << "\n\nVector v1 " << ( result ? "is" : "is not" ) 
        << " equal to vector v2.\n";

   // compare vectors v1 and v3 for equality
   result = std::equal( v1.begin(), v1.end(), v3.begin() );
   cout << "Vector v1 " << ( result ? "is" : "is not" ) 
        << " equal to vector v3.\n";

   // location represents pair of vector iterators
   std::pair< std::vector< int >::iterator,
              std::vector< int >::iterator > location;

   // check for mismatch between v1 and v3
   location = 
      std::mismatch( v1.begin(), v1.end(), v3.begin() );

   cout << "\nThere is a mismatch between v1 and v3 at "
        << "location " << ( location.first - v1.begin() ) 
        << "\nwhere v1 contains " << *location.first
        << " and v3 contains " << *location.second 
        << "\n\n";

   char c1[ SIZE ] = "HELLO";
   char c2[ SIZE ] = "BYE BYE";

   // perform lexicographical comparison of c1 and c2
   result = std::lexicographical_compare( 
      c1, c1 + SIZE, c2, c2 + SIZE );

   cout << c1 
        << ( result ? " is less than " : 
           " is greater than or equal to " )
        << c2 << endl;

   return 0;

} // end main
/***********/
// Fig. 21.30: fig21_30.cpp
// Mathematical algorithms of the standard library.
#include <iostream>

using std::cout;
using std::endl;

#include <algorithm>  // algorithm definitions  
#include <numeric>    // accumulate is defined here
#include <vector>

bool greater9( int );
void outputSquare( int );
int calculateCube( int );

int main()
{
   const int SIZE = 10;
   int a1[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

   std::vector< int > v( a1, a1 + SIZE );
   std::ostream_iterator< int > output( cout, " " );

   cout << "Vector v before random_shuffle: ";
   std::copy( v.begin(), v.end(), output );

   // shuffle elements of v
   std::random_shuffle( v.begin(), v.end() );

   cout << "\nVector v after random_shuffle: ";
   std::copy( v.begin(), v.end(), output );

   int a2[] = { 100, 2, 8, 1, 50, 3, 8, 8, 9, 10 };
   std::vector< int > v2( a2, a2 + SIZE );
   
   cout << "\n\nVector v2 contains: ";
   std::copy( v2.begin(), v2.end(), output );
 
   // count number of elements in v2 with value 8
   int result = std::count( v2.begin(), v2.end(), 8 );

   std::cout << "\nNumber of elements matching 8: " << result;
 
   // count number of elements in v2 that are greater than 9
   result = std::count_if( v2.begin(), v2.end(), greater9 );

   cout << "\nNumber of elements greater than 9: " << result;

   // locate minimum element in v2
   cout << "\n\nMinimum element in Vector v2 is: "
        << *( std::min_element( v2.begin(), v2.end() ) );

   // locate maximum element in v2
   cout << "\nMaximum element in Vector v2 is: "
        << *( std::max_element( v2.begin(), v2.end() ) );

   // calculate sum of elements in v
   cout << "\n\nThe total of the elements in Vector v is: "
        << std::accumulate( v.begin(), v.end(), 0 );

   cout << "\n\nThe square of every integer in Vector v is:\n";

   // output square of every element in v
   std::for_each( v.begin(), v.end(), outputSquare );

   std::vector< int > cubes( SIZE );
   
   // calculate cube of each element in v; 
   // place results in cubes
   std::transform( 
      v.begin(), v.end(), cubes.begin(), calculateCube );

   cout << "\n\nThe cube of every integer in Vector v is:\n";
   std::copy( cubes.begin(), cubes.end(), output );

   cout << endl;

   return 0;

} // end main

// determine whether argument is greater than 9
bool greater9( int value ) 
{ 
   return value > 9; 

} // end function greater9

// output square of argument
void outputSquare( int value ) 
{ 
   cout << value * value << ' '; 

} // end function outputSquare

// return cube of argument
int calculateCube( int value ) 
{ 
   return value * value * value; 

} // end function calculateCube
/*****************************/
// Fig. 21.31: fig21_31.cpp
// Standard library search and sort algorithms.
#include <iostream>

using std::cout;
using std::endl;

#include <algorithm>  // algorithm definitions
#include <vector>     // vector class-template definition

bool greater10( int value );  // prototype

int main()
{
   const int SIZE = 10;
   int a[ SIZE ] = { 10, 2, 17, 5, 16, 8, 13, 11, 20, 7 };

   std::vector< int > v( a, a + SIZE );
   std::ostream_iterator< int > output( cout, " " );

   cout << "Vector v contains: ";
   std::copy( v.begin(), v.end(), output );
   
   // locate first occurrence of 16 in v
   std::vector< int >::iterator location;
   location = std::find( v.begin(), v.end(), 16 );

   if ( location != v.end() ) 
      cout << "\n\nFound 16 at location " 
           << ( location - v.begin() );
   else 
      cout << "\n\n16 not found";
   
   // locate first occurrence of 100 in v
   location = std::find( v.begin(), v.end(), 100 );

   if ( location != v.end() ) 
      cout << "\nFound 100 at location " 
           << ( location - v.begin() );
   else 
      cout << "\n100 not found";

   // locate first occurrence of value greater than 10 in v
   location = std::find_if( v.begin(), v.end(), greater10 );

   if ( location != v.end() ) 
      cout << "\n\nThe first value greater than 10 is "
           << *location << "\nfound at location " 
           << ( location - v.begin() );
   else 
      cout << "\n\nNo values greater than 10 were found";

   // sort elements of v
   std::sort( v.begin(), v.end() );

   cout << "\n\nVector v after sort: ";
   std::copy( v.begin(), v.end(), output );

   // use binary_search to locate 13 in v
   if ( std::binary_search( v.begin(), v.end(), 13 ) )
      cout << "\n\n13 was found in v";
   else
      cout << "\n\n13 was not found in v";

   // use binary_search to locate 100 in v
   if ( std::binary_search( v.begin(), v.end(), 100 ) )
      cout << "\n100 was found in v";
   else
      cout << "\n100 was not found in v";

   cout << endl;

   return 0;

} // end main

// determine whether argument is greater than 10
bool greater10( int value ) 
{ 
   return value > 10; 

} // end function greater10
/*************************/
// Fig. 21.42: fig21_42.cpp
// Demonstrating function objects.
#include <iostream>

using std::cout;
using std::endl;

#include <vector>      // vector class-template definition
#include <algorithm>   // copy algorithm
#include <numeric>     // accumulate algorithm
#include <functional>  // binary_function definition

// binary function adds square of its second argument and
// running total in its first argument, then returns sum
int sumSquares( int total, int value ) 
{ 
   return total + value * value; 

} // end function sumSquares

// binary function class template defines overloaded operator()
// that adds suare of its second argument and running total in 
// its first argument, then returns sum
template< class T > 
class SumSquaresClass : public std::binary_function< T, T, T > {

public:
   
   // add square of value to total and return result
   const T operator()( const T &total, const T &value )
   { 
      return total + value * value; 

   } // end function operator()
   
}; // end class SumSquaresClass

int main()
{
   const int SIZE = 10;
   int array[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

   std::vector< int > integers( array, array + SIZE );

   std::ostream_iterator< int > output( cout, " " );

   int result = 0;

   cout << "vector v contains:\n";
   std::copy( integers.begin(), integers.end(), output );

   // calculate sum of squares of elements of vector integers
   // using binary function sumSquares
   result = std::accumulate( integers.begin(), integers.end(), 
      0, sumSquares );

   cout << "\n\nSum of squares of elements in integers using "
        << "binary\nfunction sumSquares: " << result;

   // calculate sum of squares of elements of vector integers
   // using binary-function object 
   result = std::accumulate( integers.begin(), integers.end(), 
      0, SumSquaresClass< int >() );

   cout << "\n\nSum of squares of elements in integers using "
        << "binary\nfunction object of type " 
        << "SumSquaresClass< int >: " << result << endl;

   return 0;

} // end main
