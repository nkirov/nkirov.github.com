#include "adt.hpp"

// Code Fragment: HeapTree

    template <typename Object>				// HeapTree interface 
    class HeapTree : public InspectableBinaryTree<Object>, 
         PositionalContainer<Object> {
    public:
      Position add(const Object &elem);	// add new last node
      Object remove();					// remove last node
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
    
// Code Fragment: HPQ1

    template <typename Key, typename Element, typename Comp>
    class HeapPriorityQueue { 
    protected: 						// typename shortcuts
      typedef Item<Key, Element>	    Item; 		// (key, element) pair
      typedef VectorHeapTree<Item>	    HeapTree;		// a heap of items
      typedef HeapTree::Position	    Position;		// a position in heap
    protected: 						// local utilities
      const Key& key(const Position& p) const 		// position's key
        { return p.element().key(); }
      Element& element(const Position& p)			// position's element
        { return p.element().element(); }
    private: 						// member data
      HeapTree    T;					// heap tree
      Comp	      comp;					// comparator
    public:
      HeapPriorityQueue(int capac = 100)			// constructor
        : T(capac), comp() { }
      int size() const 					// number of elements
        { return (T.size()-1)/2; }
      bool isEmpty() const  				// is the queue empty?
        { return size() == 0; }

      void insertItem(const Key& k, const Element& e);	// insert (key, element)

      Element& minElement()					// return min element
          throw(EmptyContainerException) {
        if (isEmpty())
          throw EmptyContainerException("Minimum element of empty queue");
        return element(T.root());
      }
      const Key& minKey() const 				// return minimum key
          throw(EmptyContainerException) {
        if (isEmpty())
          throw EmptyContainerException("Minimum key of empty queue");
        return key(T.root());
      }
      void removeMin() throw(EmptyContainerException);	// remove minimum
    };

// Code Fragment: HPQ2

    template <typename Key, typename Element, typename Comp>
    void HeapPriorityQueue<Key, Element, Comp>::
    insertItem(const Key& k, const Element& e) {		// insert key-element
      Position z = T.add(Item(k, e));
      while (!T.isRoot(z)) {				// up-heap bubbling
        Position u = T.parent(z);
        if (comp(key(u), key(z)) <= 0) break;
        T.swapElements(u, z);
        z = u;
      }
    }

    template <typename Key, typename Element, typename Comp>
    void HeapPriorityQueue<Key, Element, Comp>::
    removeMin()						// remove minimum
        throw(EmptyContainerException) {
      if (isEmpty())
        throw EmptyContainerException("Removal from empty queue");
      if (size() == 1)
        T.remove();
      else {
        T.replaceElement(T.root(), T.remove());
        Position r = T.root();
        while (T.isInternal(T.leftChild(r))) { 		// down-heap bubbling
          Position s = T.rightChild(r);
          if (T.isExternal(T.rightChild(r)) ||
              comp(key(T.leftChild(r)), key(T.rightChild(r))) <= 0)
            s = T.leftChild(r);
          if (comp(key(s), key(r)) < 0) {
            T.swapElements(r, s);
            r = s;
          }
          else break;
        }
      }
    }
