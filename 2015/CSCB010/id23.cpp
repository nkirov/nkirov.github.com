// 23.  Асоциативни контейнери - set, multiset, map, multimap
//
// Fig. 21.19: fig21_19.cpp
// Testing Standard Library class multiset
#include <iostream>

using std::cout;
using std::endl;

#include <set>  // multiset class-template definition

// define short name for multiset type used in this program
typedef std::multiset< int, std::less< int > > ims;

#include <algorithm>  // copy algorithm

int main()
{
   const int SIZE = 10;
   int a[ SIZE ] = { 7, 22, 9, 1, 18, 30, 100, 22, 85, 13 };

   ims intMultiset;  // ims is typedef for "integer multiset"
   std::ostream_iterator< int > output( cout, " " );

   cout << "There are currently " << intMultiset.count( 15 )
        << " values of 15 in the multiset\n";
   
   intMultiset.insert( 15 );  // insert 15 in intMultiset
   intMultiset.insert( 15 );  // insert 15 in intMultiset

   cout << "After inserts, there are " 
        << intMultiset.count( 15 )
        << " values of 15 in the multiset\n\n";

   // iterator that cannot be used to change element values
   ims::const_iterator result;  

   // find 15 in intMultiset; find returns iterator
   result = intMultiset.find( 15 );  

   if ( result != intMultiset.end() ) // if iterator not at end
      cout << "Found value 15\n";     // found search value 15
   
   // find 20 in intMultiset; find returns iterator
   result = intMultiset.find( 20 );

   if ( result == intMultiset.end() )    // will be true hence
      cout << "Did not find value 20\n"; // did not find 20

   // insert elements of array a into intMultiset
   intMultiset.insert( a, a + SIZE ); 

   cout << "\nAfter insert, intMultiset contains:\n";
   std::copy( intMultiset.begin(), intMultiset.end(), output );

   // determine lower and upper bound of 22 in intMultiset
   cout << "\n\nLower bound of 22: " 
        << *( intMultiset.lower_bound( 22 ) );
   cout << "\nUpper bound of 22: " 
        << *( intMultiset.upper_bound( 22 ) );

   // p represents pair of const_iterators 
   std::pair< ims::const_iterator, ims::const_iterator > p;

   // use equal_range to determine lower and upper bound 
   // of 22 in intMultiset
   p = intMultiset.equal_range( 22 );

   cout << "\n\nequal_range of 22:"
        << "\n   Lower bound: " << *( p.first )
        << "\n   Upper bound: " << *( p.second );

   cout << endl;

   return 0;

} // end main
/***********/
// Fig. 21.20: fig21_20.cpp
// Standard library class set test program.
#include <iostream>

using std::cout;
using std::endl;

#include <set>

// define short name for set type used in this program
typedef std::set< double, std::less< double > > double_set;

#include <algorithm>

int main()
{
   const int SIZE = 5;
   double a[ SIZE ] = { 2.1, 4.2, 9.5, 2.1, 3.7 };   

   double_set doubleSet( a, a + SIZE );;
   std::ostream_iterator< double > output( cout, " " );

   cout << "doubleSet contains: ";
   std::copy( doubleSet.begin(), doubleSet.end(), output );

   // p represents pair containing const_iterator and bool
   std::pair< double_set::const_iterator, bool > p;

   // insert 13.8 in doubleSet; insert returns pair in which 
   // p.first represents location of 13.8 in doubleSet and 
   // p.second represents whether 13.8 was inserted
   p = doubleSet.insert( 13.8 ); // value not in set

   cout << "\n\n" << *( p.first ) 
        << ( p.second ? " was" : " was not" ) << " inserted";

   cout << "\ndoubleSet contains: ";
   std::copy( doubleSet.begin(), doubleSet.end(), output );

   // insert 9.5 in doubleSet
   p = doubleSet.insert( 9.5 );  // value already in set

   cout << "\n\n" << *( p.first ) 
        << ( p.second ? " was" : " was not" ) << " inserted";
   
   cout << "\ndoubleSet contains: ";
   std::copy( doubleSet.begin(), doubleSet.end(), output );

   cout << endl;

   return 0;

} // end main
/***********/
// Fig. 21.21: fig21_21.cpp
// Standard library class multimap test program.
#include <iostream>

using std::cout;
using std::endl;

#include <map>  // map class-template definition

// define short name for multimap type used in this program
typedef std::multimap< int, double, std::less< int > > mmid;

int main()
{
   mmid pairs;

   cout << "There are currently " << pairs.count( 15 )
        << " pairs with key 15 in the multimap\n";

   // insert two value_type objects in pairs
   pairs.insert( mmid::value_type( 15, 2.7 ) );
   pairs.insert( mmid::value_type( 15, 99.3 ) );
   
   cout << "After inserts, there are " 
        << pairs.count( 15 )
        << " pairs with key 15\n\n";
   
   // insert five value_type objects in pairs
   pairs.insert( mmid::value_type( 30, 111.11 ) );
   pairs.insert( mmid::value_type( 10, 22.22 ) );
   pairs.insert( mmid::value_type( 25, 33.333 ) );
   pairs.insert( mmid::value_type( 20, 9.345 ) );
   pairs.insert( mmid::value_type( 5, 77.54 ) );
   
   cout << "Multimap pairs contains:\nKey\tValue\n";
   
   // use const_iterator to walk through elements of pairs
   for ( mmid::const_iterator iter = pairs.begin();
         iter != pairs.end(); ++iter )
      cout << iter->first << '\t' 
           << iter->second << '\n';

   cout << endl;

   return 0;

} // end main
/***********/
// Fig. 21.22: fig21_22.cpp
// Standard library class map test program.
#include <iostream>

using std::cout;
using std::endl;

#include <map>  // map class-template definition

// define short name for map type used in this program
typedef std::map< int, double, std::less< int > > mid;

int main()
{
   mid pairs;

   // insert eight value_type objects in pairs
   pairs.insert( mid::value_type( 15, 2.7 ) );
   pairs.insert( mid::value_type( 30, 111.11 ) );
   pairs.insert( mid::value_type( 5, 1010.1 ) );
   pairs.insert( mid::value_type( 10, 22.22 ) );
   pairs.insert( mid::value_type( 25, 33.333 ) );
   pairs.insert( mid::value_type( 5, 77.54 ) ); // dupe ignored
   pairs.insert( mid::value_type( 20, 9.345 ) );
   pairs.insert( mid::value_type( 15, 99.3 ) ); // dupe ignored

   cout << "pairs contains:\nKey\tValue\n";
   
   // use const_iterator to walk through elements of pairs
   for ( mid::const_iterator iter = pairs.begin(); 
         iter != pairs.end(); ++iter )
      cout << iter->first << '\t' 
           << iter->second << '\n';

   // use subscript operator to change value for key 25
   pairs[ 25 ] = 9999.99;  
   
   // use subscript operator insert value for key 40
   pairs[ 40 ] = 8765.43;  
   
   cout << "\nAfter subscript operations, pairs contains:"
        << "\nKey\tValue\n";
   
   for ( mid::const_iterator iter2 = pairs.begin(); 
         iter2 != pairs.end(); ++iter2 )
      cout << iter2->first << '\t' 
           << iter2->second << '\n';

   cout << endl;

   return 0;

} // end main