// RBTree.cpp

#include "BSTree.h"

/*Code Fragment: RBItem
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
*/    
/*****************************************************************************/
//Code Fragment: RBTree1
    template <typename Key, typename Element>
    class RBTree : public BinarySearchTree<Key, Element, RBItem<Key,Element> > {
    protected: 						// local types
      typedef RBItem<Key, Element> 		Item;		// a tree node item
      typedef BinarySearchTree<Key, Element, Item>  BST;	// base search tree
      typedef typename BST::BTPosition 		BTPosition;	// a tree position
    public: 						// public types
      typedef typename BST::Position 		Position;	// a position
    protected: 						// local utilities
      Color color(const BTPosition& p) const {		// get position's color
        if (BST::T.isExternal(p)) return BLACK;			// externals are black
        return p.element().color();
      }
      bool isRed(const BTPosition& p) const 		// is p red?
        { return color(p) == RED; }
      bool isBlack(const BTPosition& p) const 		// is p black?
        { return color(p) == BLACK; }
      void setRed(const BTPosition& p)			// make p red 
        { if (BST::T.isInternal(p)) p.element().setColor(RED); }
      void setBlack(const BTPosition& p)			// make p black
        { if (BST::T.isInternal(p)) p.element().setColor(BLACK); }
      void setColor(const BTPosition& p, Color color)	// set p's color
        { if (BST::T.isInternal(p)) p.element().setColor(color); }
      bool hasTwoExternalChildren(const BTPosition& p) const // 2 external children?
        { return (BST::T.isExternal(BST::T.leftChild(p)) &&
        	      BST::T.isExternal(BST::T.rightChild(p))); }
      bool hasRedChild(const BTPosition& p) const 		// does p have red child?
        { return (isRed(BST::T.leftChild(p)) || isRed(BST::T.rightChild(p))); }
      // ... (other utilities omitted)
    public:
      RBTree() : BST() { }					// constructor
      // ... (insert insertItem() and removeElement() here)
/*****************************************************************************/      
//Code Fragment: RBTree2
    public:
      void insertItem(const Key& k, const Element& e) {	// insert (key,element)
        BTPosition z = inserter(k, e);			// insert in base tree
        if (BST::T.isRoot(z))
          setBlack(z);					// root is always black
        else 
          remedyDoubleRed(z);				// rebalance if needed
      }
    protected:
      void remedyDoubleRed(const BTPosition& z) {		// fix double-red z
        BTPosition v = BST::T.parent(z);				// v is z's parent
        if (BST::T.isRoot(v) || isBlack(v)) return;		// v is black, all ok
        							// z, v are double-red
        if (isBlack(BST::T.sibling(v)))  {			// Case 1: restructuring
          v = BST::T.restructure(z);
          setBlack(v);					// top vertex now black
          setRed(BST::T.leftChild(v)); setRed(BST::T.rightChild(v));	// children are red
        }  
        else  {						// Case 2: recoloring
          setBlack(v);					// make v black
          setBlack(BST::T.sibling(v));				// ..and its sibling
          BTPosition u = BST::T.parent(v);			// u is v's parent
          if (BST::T.isRoot(u)) return;
          setRed(u);					// make u red
          remedyDoubleRed(u);				// may need to fix u now
        }
      }
/*****************************************************************************/ 
//Code Fragment: RBTree3
    public:
      void removeElement(const Key& k)			// remove using key
          throw(NonexistentElementException) {
        BTPosition u = finder(k, BST::T.root());			// find the node
        if (u.isNull())					// not found?
          throw NonexistentElementException("Remove nonexistent element");
        BTPosition r = remover(u);				// remove u
        if (BST::T.isRoot(r) || isRed(r) || wasParentRed(r))
          setBlack(r);					// fix by color change
        else 						// r, parent both black
          remedyDoubleBlack(r);				// fix double-black r
      }
    protected:
      void remedyDoubleBlack(const BTPosition& r) {		// fix double-black r
        BTPosition x, y, z;
        x = BST::T.parent(r);
        y = BST::T.sibling(r);
        if (isBlack(y))  {
          if (hasRedChild(y))  {				// Case 1: restructuring
            z = redChild(y);
            Color oldColor = color(x);			// save top vertex color
            z = BST::T.restructure(z);				// restructure x,y,z
            setColor(z, oldColor);       setBlack(r);	// fix colors
            setBlack(BST::T.leftChild(z));    setBlack(BST::T.rightChild(z));
          }
          else {						// Case 2: recoloring
            setBlack(r); setRed(y);				// r=black, y=red
            if (isBlack(x) && !BST::T.isRoot(x))
      	remedyDoubleBlack(x);				// fix double-black x
            setBlack(x);
          }
        }
        else {						// Case 3: adjustment
          if (y == BST::T.rightChild(x))	  z = BST::T.rightChild(y);	// z is the grandchild
          else 			  z = BST::T.leftChild(y);	// ...on same side as y
          BST::T.restructure(z);					// restructure x,y,z
          setBlack(y); setRed(x);				// y=black, x=red
          remedyDoubleBlack(r);				// fix by Case 1 or 2
        }
      }
    };

int main()
{ RBTree<int, string> rbtree;
  for (int i=0; i<1000; i++)
    rbtree.insertItem((i*71)%1000, "ABC");
  RBTree<int, string>::Position 
                            f = rbtree.find(10*71%1000);
  cout << f.element() << " " << f.key() << endl;
  
  f = rbtree.find(1001);
  if (f.isNull()) cout << "NULL" << endl;
  else  cout << f.element() << " " << f.key() << endl;
  
  try {
     rbtree.removeElement(555*71%1000);
     rbtree.removeElement(1001);
  }
  catch(NonexistentElementException e)
  { cout << e.getMessage() << endl;
    exit(1);  
  }
  return 0;   
}    
