#include <iostream>
using namespace std;
// Code Fragment: LinkedBinaryTree1

template <typename Object>
class LinkedBinaryTree {
protected:
  // ... (insert Node definition here)
  //Code Fragment: Node
    struct Node;
    typedef Node* NodePtr;				// a node pointer
    struct Node {						// a node in the tree
    Object      element;				// the element
    NodePtr     parent;					// parent
    NodePtr     left;					// left child
    NodePtr     right;					// right child
    Node() : element(Object())				// default constructor
      { parent = left = right = NULL; }
    NodePtr sibling() const {				// get our sibling
      return (this == parent->left ? parent->right : parent->left);
    }
  };
public:
  // ... (insert Position definition here)
  //Code Fragment: Position
  class Position {				// position in the tree
  private:
    NodePtr node;				// pointer to the node
  public:
    Position(NodePtr n = NULL)	// constructor
      { node = n; }
    Object& element() const		// get element
      { return node->element; }
    bool isNull() const 		// null position?
      { return node == NULL; }
    friend class LinkedBinaryTree;	// allow access
  };

private: 						// member data
  NodePtr    theRoot;			// pointer to the root
  int        sz;				// number of nodes
//protected: 						// protected utilities
private:
  // ... (insert LinkedBinaryTree utilities here)
//Code Fragment: LinkedBinaryTree2
  // ... (utilities for LinkedBinaryTree)
  NodePtr nodePtr(const Position& v) const 	// convert to NodePtr
    { return v.node; }
  bool isExternal(NodePtr n) const 			// is node external?
    { return (n->left == NULL && n->right == NULL); }
  bool isInternal(NodePtr n) const 			// is node internal?
    { return ! isExternal(n); }
  bool isRoot(NodePtr n) const 				// is node the root?
    { return (n == theRoot); }
  void setRoot(NodePtr r)				    // make r the root
    { theRoot = r;  r->parent = NULL; }
  void replaceElement(NodePtr n, const Object& o)	// replace element
    { n->element = o; }
  void swapElements(NodePtr n, NodePtr w) {	 // swap elements
    Object temp = w->element;
    w->element = n->element;
    n->element = temp;	
  }
  void expandExternal(NodePtr n) {			// expand external node
    n->left   = new Node;	n->left->parent = n;
    n->right  = new Node;	n->right->parent = n;
    sz += 2;
  }
  NodePtr removeAboveExternal(NodePtr n) {	// remove n and parent
    NodePtr p = n->parent;
    NodePtr s = n->sibling();
    if (isRoot(p)) setRoot(s);			// p was root; now s is
    else {
      NodePtr g = p->parent;			// the grandparent
      if (p == g->left) g->left  = s;	// replace parent by sibling
      else 		        g->right = s;
      s->parent = g;
    }
    delete n; delete p;					// delete removed nodes
    sz -= 2;						    // two fewer nodes
    return s;
  }  
public:
  LinkedBinaryTree()					// constructor
    { theRoot = new Node; sz = 1; }
  int size() const  					// size of tree
    { return sz; }
  bool isEmpty() const 					// is tree empty?
    { return (sz == 0); }
  Position root() const 				// returns root
    { return Position(theRoot); }
  Position leftChild(const Position& v) const 	// returns left child
    { return Position(nodePtr(v)->left); }
  Position rightChild(const Position& v) const 	// returns right child
    { return Position(nodePtr(v)->right); }
  Position parent(const Position& v) const 		// returns parent
    { return Position(nodePtr(v)->parent); }    
  // ... parent(), and sibling() are omitted but similar)
  bool isRoot(const Position& v) const 			// is v the root?
    { return isRoot(nodePtr(v)); }
  bool isInternal(const Position& v) const 		// is v internal?
    { return isInternal(nodePtr(v)); }
  bool isExternal(const Position& v) const 		// is v external?
    { return isExternal(nodePtr(v)); }
  void replaceElement(const Position& v, const Object& o)
    { replaceElement(nodePtr(v), o); }			// replace element
  void swapElements(const Position& v, const Position& w)
    { swapElements(nodePtr(v), nodePtr(w)); }	// swap elements
  void expandExternal(const Position& v)
    { expandExternal(nodePtr(v)); }			    // expand external node
  Position removeAboveExternal(const Position& v)	// remove v and parent
    { return Position(removeAboveExternal(nodePtr(v))); }
  // ... (housekeeping and iterator functions omitted)
};




