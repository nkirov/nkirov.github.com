#include "LBTree.h"
#include "except.h"

// NonexistentElementException

/*******************************************************************/   
// Code Fragment: Item
template <typename Key, typename Element>
class Item {					 // a (key, element) pair
private:
  Key	    _key;				 // key value
  Element   _elem;				 // element
public:
  Item(const Key& k = Key(), const Element& e = Element())
    : _key(k), _elem(e) { }		 // constructor
  const Key& key() const 		 // gets the key (read only)
    { return _key; }
  Element& element()			 // gets the element
    { return _elem; }
  const Element& element() const // gets the element (read only)
    { return _elem; }
  void setKey(const Key& k)		 // sets the key value
    { _key = k; }
  void setElement(const Element& e)		// sets the element
    { _elem = e; }
};
/*******************************************************************/   
    enum Color {RED, BLACK};				// item colors
    template <typename Key, typename Element>
    class RBItem : public Item<Key,Element> {		// a RBTree item
    private:
      Color col;						// node color
    public:
      RBItem(const Key& k = Key(),
      	 const Element& e = Element(), Color c = RED)	// constructor
          : Item<Key,Element>(k, e), col(c) { }
      Color color() const { return col; }			// get color
      void setColor(Color c) { col = c; }			// set color
    };
/*******************************************************************/   
//Code Fragment: BST1
template <typename Key, typename Element,
//			typename BSTItem = Item<Key, Element> >
	         typename BSTItem = RBItem<Key, Element> >			
			
class BinarySearchTree {
protected: 						// local types
//  typedef Item<Key, Element> BSTItem;
  typedef typename 
   LinkedBinaryTree< RBItem<Key, Element> >::Position 
   BTPosition;	                // a tree position !!!!!!!!!!!
public: 						// public types
  // ... (insert Position here)
/*******************************************************************/   
//Code Fragment: Position
  class Position {       // a Position
  private:
    BTPosition btPos;	// position of node
  public:
    Position(const BTPosition &p) : btPos(p) { }	// constructor
    Element& element()  				// get element
      { return btPos.element().element(); }
    const Key& key() const 				// get key (read only)
      { return btPos.element().key(); }
    bool isNull() const 				// a null position?
      { return btPos.isNull(); }
  };
/*******************************************************************/   
protected: 						// member data
  LinkedBinaryTree<BSTItem> T;	// the binary tree
protected: 						// local utilities
  Key key(const BTPosition& p) const	// get position's key
    { return p.element().key(); }
  							           // set a node's item
  void setItem(const BTPosition& p, const BSTItem& i) const {
    p.element().setKey(i.key());
    p.element().setElement(i.element());
  }
public:
  BinarySearchTree() : T() { }		// constructor
  int size() const 					// size
    { return (T.size() - 1) / 2; }	// number of internals
  bool isEmpty() const
    { return size() == 0; }
  // ... (insert find, insert, and remove functions here)
/*******************************************************************/  
//  Code Fragment: BST2
public:
  Position find(const Key& k) {				// find a key
    BTPosition p = finder(k, T.root());		// search for it
    if (T.isInternal(p))		// found it
      return Position(p);		// return its position
    else 						// didn't find it
      return Position(NULL);	// return null position
  }
protected:
  BTPosition finder(const Key& k, const BTPosition& p) {// find utility
    if (T.isExternal(p)) return p;		// key not found
    Key curKey = key(p);				// key of current node
    if (k < curKey)
      return finder(k, T.leftChild(p));			// search left subtree
    else if(k > curKey)
      return finder(k, T.rightChild(p));		// search right subtree
    else 						// found it
      return p;					// return this position
  }
/*******************************************************************/ 
// Code Fragment: BST3
public:
  void insertItem(const Key& k, const Element& e)	// insert (key,element)
    { inserter(k, e); }
protected:
  BTPosition inserter(const Key& k, const Element& e) {	// insert utility
    BTPosition p = finder(k, T.root());	// find insertion spot
    while (T.isInternal(p))				// key already exists?
      p = finder(k, T.rightChild(p));	// look further
    T.expandExternal(p);				// add new node here
    setItem(p, BSTItem(k, e));			// store (key,element)
    return p;						    // return this position
  }
/*******************************************************************/ 
public:
  void removeElement(const Key& k)			// remove using key
      throw(NonexistentElementException) {
    BTPosition p = finder(k, T.root());		// find the node
//  if (p.isNull())					// not found? ERROR !!!!!!!!!!!
    if (T.isExternal(p))            // not found !!
      throw NonexistentElementException("Remove nonexistent element");
    remover(p);						// remove it
  }
protected:
  BTPosition remover(const BTPosition& r) {	// remove utility
    BTPosition p;
    if (T.isExternal(T.leftChild(r)))		// left is external?
      p = T.leftChild(r);				    // remove from left
    else if (T.isExternal(T.rightChild(r)))	// right is external?
      p = T.rightChild(r);				    // remove from right
    else {						// both internal?
      p = T.rightChild(r);		// p = replacement
      do 						// find leftmost in
        p = T.leftChild(p);		// ...right subtree
      while (T.isInternal(p));
      setItem(r, T.parent(p).element()); // copy parent(p) to r
    }
    return T.removeAboveExternal(p);	 // remove p and parent
  }
};
/*******************************************************************/ 

