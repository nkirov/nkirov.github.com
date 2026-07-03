using namespace std;

#include "sequence.cpp"

//Code Fragment: Item
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
  const Element& element() const 	// gets the element (read only)
    { return _elem; }
  void setKey(const Key& k)			// sets the key value
    { _key = k; }
  void setElement(const Element& e)	// sets the element
    { _elem = e; }
};

//Code Fragment: SSPQ1
template <typename Key, typename Element, typename Comp>
class SortedSeqPriorityQueue { 
protected:      					// typename shortcuts
  typedef Item<Key, Element>	    Item;		// (key, element) pair
  typedef NodeSequence<Item>	    Sequence;	// a sequence of items
public:
  typedef Sequence::Position 	    Position;	// position in sequence
protected:      				// local utilities
  const Key& key(const Position& p) const 		// position's key
    { return p.element().key(); }
  Element& element(const Position& p)			// position's element
    { Position t = p; return t.element().element(); }
private:        					// member data
  Sequence  S;						// sorted sequence
  Comp	    comp;					// comparator
public:
  SortedSeqPriorityQueue(): S(), comp() {} // default constructor
  int size() const      				   // number of items
    { return S.size(); }
  bool isEmpty() const  				   // is the queue empty?
    { return S.isEmpty(); }

//Code Fragment: SSPQ2
  // ... (continuation of SortedSeqPriorityQueue)
  void insertItem(const Key& k, const Element& e) {	// insert into queue
    if (S.isEmpty())
      S.insertFirst(Item(k, e));			// if empty insert first
    else if (comp(k, key(S.last())) > 0)	// greater than last?
      S.insertAfter(S.last(), Item(k,e));	// insert at end
    else {
      Position curr = S.first();			// start search
      while (comp(k, key(curr)) > 0)		// skip over small keys
        curr = S.after(curr);
      S.insertBefore(curr, Item(k,e));		// insert here
    }
  }
  Element& minElement()			     // element with min key
  {
        return element(S.first());
  }
  const Key& minKey() const    	     // returns minimum key
  {
      return key(S.first());
  }
  void removeMin()				     // remove minimum
  {
    S.remove(S.first());
  }
};

int main()
{ return 0; }
