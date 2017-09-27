template <typename Object>
class InspectableContainer {
public:
  int size();
  bool isEmpty() const;       
};             

template <typename Object>
class InspectablePositionalContainer
  : public InspectableContainer<Object> {
public:
  class Position {			    // node position type
  public:
     Object& element() const;
     bool isNull() const;      
  };
  class PositionIterator {		// position iterator
  public:
       bool hasNext() const;
       Position next();
  };
  PositionIterator positions() const;	// get position iterator
};

template <typename Object>
class PositionalContainer :
  public InspectablePositionalContainer<Object> {
public:
  typedef typename InspectablePositionalContainer<Object>::Position Position;
  void swapElements(const Position& v, const Position& w);
  Object& replaceElement(const Position& v, const Object& e);
};

/******************************************************************************/

template <typename Object>
class InspectableTree
  : public InspectablePositionalContainer<Object> {
public:
  typedef typename InspectablePositionalContainer<Object>::Position Position; 
  typedef typename InspectablePositionalContainer<Object>::PositionIterator 
                                                            PositionIterator;    
  Position root() const;				        // get root of tree
  Position parent(const Position& v) const;		// get parent of v
  PositionIterator children(const Position& v) const;	// iterator for children
  bool isInternal(const Position& v) const;		// internal node?
  bool isExternal(const Position& v) const;		// external node?
  bool isRoot(const Position& v) const;			// the root?
};

template <typename Object>
class InspectableBinaryTree
  : public InspectableTree<Object> {
public:
  Position leftChild(const Position& v) const;		// left child of v
  Position rightChild(const Position& v) const;		// right child of v
  Position sibling(const Position& v) const;		// sibling of v
};


template <typename Object>				// HeapTree interface 
class HeapTree : public InspectableBinaryTree, PositionalContainer {
public:
  Position add(const Object &elem);			// add new last node
  Object remove();					// remove last node
};
