#include<string>
#include<iostream>
using namespace std;

class RuntimeException {		// generic run-time exception
private:
  string errorMsg;
public:
  RuntimeException(const string& err) { errorMsg = err; }
  string getMessage() const { return errorMsg; }
};

inline std::ostream& operator<<(std::ostream& out, const RuntimeException& e)
  { return out << e.getMessage(); }

/**
 * Exception thrown on performing top or pop of an empty stack.
 */
class HashTableFullException : public RuntimeException {  
public:
  HashTableFullException(const string& err) : RuntimeException(err) {}
};

/**
 * Exception thrown on performing top or pop of an empty stack.
 */
class NonexistentElementException : public RuntimeException {  
public:
  NonexistentElementException(const string& err) : RuntimeException(err) {}
};

// Code Fragment: Item
template <typename Key, typename Element>
class Item {					// a (key, element) pair
private:
  Key	    _key;				// key value
  Element   _elem;				// element
public:
  Item(const Key& k = Key(), const Element& e = Element())
    : _key(k), _elem(e) { }			// constructor
  const Key& key() const 			// gets the key (read only)
    { return _key; }
  Element& element()				// gets the element
    { return _elem; }
  const Element& element() const 		// gets the element (read only)
    { return _elem; }
  void setKey(const Key& k)			// sets the key value
    { _key = k; }
  void setElement(const Element& e)		// sets the element
    { _elem = e; }
};

class HComp {
      public:
          bool isEqualTo(int i1, int i2) const { return i1 == i2; }  
          int hashValue(int i) const { return i; }            
};

//  Code Fragment: Hash1
template <typename Key, typename Element, typename HashCmp>
class LinearProbeHashTable {
protected: 						// local types
  // ... (insert HashEntry here)
// Code Fragment: HashEntry
  enum Status { EMPTY, USED, FREE };			// table entry status

  struct HashEntry : public Item<Key, Element> {// a hash table entry
    Status status;					// entry status
    HashEntry(const Key& k = Key(),	// constructor
	const Element& e = Element(),
	Status st = EMPTY) : Item<Key,Element>(k, e), status(st) { }
  };
  typedef HashEntry* EntryPtr;	// pointer to an entry
  
public: 						// public types
  // ... (insert Position here)
// Code Fragment: Position
  class Position {	                // a hash table position
  private:
    EntryPtr node;					// pointer to entry
  public:
    Position(EntryPtr n = NULL)		// constructor
      { node = n; }
    Element& element()  			// get element
      { return node->element(); }
    const Key& key() const 			// get key
      { return node->key(); }
    bool isNull() const 			// a null position?
      { return node == NULL; }
    friend class LinearProbeHashTable;	// give hash table access
  };  
private: 						    // member data
  int 		    n, N;				// size and capacity
  EntryPtr	    A;					// array of entries
  HashCmp	    hash;				// the hash comparator
protected: 						    // local utilities
  EntryPtr finder(const Key& key) const
{ 		// search utility
  int i = hash.hashValue(key) % N;	// get hash index
  int start = i;					// starting point
  do {
    if (A[i].status == EMPTY) return NULL;		// item is not found
    if (A[i].status == USED &&
    	  hash.isEqualTo(A[i].key(), key))		// found it
      return &A[i];					// return with success
    i = (i + 1) % N;				// try next slot
  } while (i != start);				// until back to start
  return NULL;						// return with failure
}
  	// search utility
  EntryPtr inserter(const Key& key, const Element& e)	// insert utility
{ int i = hash.hashValue(key) % N;	// get hash index
  int start = i;					// starting point
  do {
    if (A[i].status != USED) {				// slot is available?
      A[i] = HashEntry(key, e, USED);	// store it here
      n++;						// increase size
      return &A[i];				// return with success
    }    i = (i + 1) % N;		// try next slot
  } while (i != start);			// until back to start
  return NULL;					// return with failure
}

public:
  LinearProbeHashTable(int capacity = 100)		// constructor
      : n(0), N(capacity), hash() { A = new HashEntry[N]; }
  int size() const 	    { return n; }		// size of dictionary
  bool isEmpty() const 	    { return (n == 0); }	// empty dictionary?

  Position find(const Key& key) const 			// find a key
    { return Position(finder(key)); }

  void insertItem(const Key& key, const Element& element)
      throw(HashTableFullException) {			// insert (key,element)
    EntryPtr e = inserter(key, element);		// attempt to insert
    if (e == NULL)					// failure
      throw HashTableFullException("Insertion into full hash table");
  }
  void removeElement(const Key& key) 			// remove using key
      throw(NonexistentElementException) {
    EntryPtr e = finder(key);		// look up key
    if (e == NULL)					// not found?
      throw NonexistentElementException("Key not found");
    e->status = FREE;			// mark entry as free
    n--;						// decrease size
  }
  // ... (some functions omitted)
};

int main()
{ LinearProbeHashTable<int, string, HComp> table;
  table.insertItem(1860, "5203161860");
  table.insertItem(1999, "9901011999");
  table.insertItem(128, "0202020128");
  LinearProbeHashTable<int, string, HComp>::Position pos;
  pos = table.find(1999);
  if (!pos.isNull()) cout << pos.key() << " " << pos.element() << endl;
  pos = table.find(1000);
  if (pos.isNull()) cout << "Not found" << endl;
  cout << "Size: " << table.size() << endl;
  table.insertItem(999, "8808080999");
  pos = table.find(999);
  if (!pos.isNull()) cout << pos.key() << " " << pos.element() << endl;  
  try 
  {  table.removeElement(1999);
     cout << "Removed 1999." << endl;
     table.removeElement(1000);
     cout << "Removed 1000." << endl;            
  }      
  catch (NonexistentElementException ex)
  {  cout << ex.getMessage() << endl;        
  }     
  return 0;   
}    
