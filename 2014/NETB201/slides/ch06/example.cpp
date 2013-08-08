// InspectableContainer
template <typename Object>
class InspectableContainer {
public:
  int size();
  bool isEmpty() const;       
};             

// Code Fragment: InspectablePositionalContainer
template <typename Object>
class InspectablePositionalContainer
  : public InspectableContainer<Object> {
public:
  class Position;					// node position type
  class PositionIterator;				// position iterator
  PositionIterator positions() const;			// get position iterator
};

// Code Fragment: PositionalContainer
template <typename Object>
class PositionalContainer :
  public InspectablePositionalContainer<Object> {
public:
  void swapElements(const Position& v, const Position& w);
  Object& replaceElement(const Position& v, const Object& e);
};

// Code Fragment: InspectableTree
template <typename Object>
class InspectableTree
  : public InspectablePositionalContainer<Object> {
public:
  Position root() const;				// get root of tree
  Position parent(const Position& v) const;		// get parent of v
  PositionIterator children(const Position& v) const;	// iterator for children
  bool isInternal(const Position& v) const;		// internal node?
  bool isExternal(const Position& v) const;		// external node?
  bool isRoot(const Position& v) const;			// the root?
};

// Code Fragment: Tree
template <typename Object>
class Tree
  : public InspectableTree<Object>, PositionalContainer<Object> { };
