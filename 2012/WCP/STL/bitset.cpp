#include <iostream>
#include <string>
#include <bitset>
using namespace std;

int main ()
{
	bitset<4> first (string("1001"));	// initialize from string
	bitset<4> second (string("0011"));  // initialize from string

	cout << (first^=second) << endl;  // 1010 (XOR,assign)
	cout << (first&=second) << endl;  // 0010 (AND,assign)
	cout << (first|=second) << endl;  // 0011 (OR,assign)

	cout << (first<<=2) << endl;      // 1100 (SHL,assign)
	cout << (first>>=1) << endl;      // 0110 (SHR,assign)

	cout << (~second) << endl;        // 1100 (NOT)
	cout << (second<<1) << endl;      // 0110 (SHL)
	cout << (second>>1) << endl;      // 0001 (SHR)

	cout << (first==second) << endl;  // false (0110==0011)
	cout << (first!=second) << endl;  // true  (0110!=0011)

	cout << (first&second) << endl;   // 0010
	cout << (first|second) << endl;   // 0111
	cout << (first^second) << endl;   // 0101

	cout<< first.to_ulong() << endl;	// 6
	cout<< second.to_ulong() << endl;	// 3

	bitset<10> third (155); // initialize from long
	cout<< third.to_string() << endl; // 0010011011

	cout<< third.count() << endl; // number of 1
	cout<< third.size() - third.count() << endl; // number of 0

	// flips only the bit at position pos
	cout << third.flip(2) << endl;     // 0010011111
	
	//changes all 0s for 1s and all 1s for 0s.
	cout << third.flip() << endl;      // 1101100000

	//convert to unsigned long integer
	cout << third.to_ulong() << endl;

	//resets all the bits in the bitset (sets al bits to 0).
	third.reset();
	cout << third.to_string() << endl; // 0000000000
	
	//sets (to 1) all the bits in the bitset.
	cout << third.set() << endl;       // 1111111111
	
	//The parameterized version, stores val as the 
	//new value for bit at position pos.
	cout << third.set(2,0) << endl;    // 1111111011
	cout << third.set(2) << endl;      // 1111111111
	
	return 0;
}