
// Code Fragment: vector1

    template <typename Object>
    class ArrayVector {
    private:
      int           capacity;			// length of array
      int           sz;				// number of elements in vector
      Object*	a;				// array storing the elements
    protected:
      void overflow();				// handle overflow by resizing
    public:
      ArrayVector(int initCap = 16) {		// constructor
        capacity    = initCap;
        sz          = 0;
        a           = new Object[capacity];
      }
      int size() const  				// number of elements
        { return sz; }
      bool isEmpty() const  			// is vector empty?
        { return size() == 0; }
      Object& elemAtRank(int r)  			// access element at rank r
        { return a[r]; }
      void replaceAtRank(int r, const Object& e)  	// replace element at given rank
        { a[r] = e; }
      void removeAtRank(int r);			// remove element at given rank
      void insertAtRank(int r, const Object& e);	// insert element at given rank
      // ... (housekeeping functions omitted)
    };
    
// Code Fragment: vector2

    // ...						// out-of-class definitions
    template <typename Object>
    void ArrayVector<Object>::
    removeAtRank(int r) {				// remove element at given rank
      for (int i = r; i < sz-1; i++)
        a[i] = a[i+1];				// shift elements down
      sz--;
    }

    template <typename Object>
    void ArrayVector<Object>::
    insertAtRank(int r, const Object& e) {		// insert element at given rank
      if (sz == capacity) overflow();		// handle overflow
      for (int i = sz-1; i >= r; i--)
        a[i+1] = a[i];				// shift elements up
      a[r] = e;
      sz++;
    }

    template <typename Object>
    void ArrayVector<Object>::
    overflow() {					// handle overflow by resizing
      capacity *= 2;				// double capacity
      Object* b = new Object[capacity];
      for (int i = 0; i < sz; i++) {		// copy contents to new array
        b[i] = a[i];
      }
      delete [] a;					// discard old array
      a = b;					// make b the new array
    }
    
// Code Fragment: NodeList1

    template <typename Object>
    class NodeList {
    protected: 
      // ... (insert Node class definition here)
    struct Node {						// node in the NodeList
    Object  element;					// element
    Node*   prev;					// previous node
    Node*   next;					// next node
    Node(const Object& e = Object(), Node* p = NULL, Node* n = NULL)
        : element(e), prev(p), next(n) { }      	// constructor
  };
  typedef Node* NodePtr;	
    public:
      // ... (insert Position class definition here)
// Code Fragment: Position

      class Position {					// position in NodeList
      private:
        NodePtr node;					// pointer to the node
      public:
        Position(NodePtr n = NULL)				// constructor
          { node = n; }
        Object& element() const 				// return element
        {
          return node->element;
        }
        bool isNull() const 				// a null position?
          { return node == NULL; }
        friend class NodeList<Object>;			// allow access
      };
  
    protected:                          // utility to convert Position to node pointer
      NodePtr nodePtr(const Position& p) const 
      { return p.node;
      }
    protected: 			// data members
      int       sz;        		// number of items
      NodePtr   header;		// head of list sentinel
      NodePtr   trailer;		// tail of list sentinel
    public:
      NodeList() {			// default constructor
        sz = 0;
        header   = new Node;	// create sentinels
        trailer  = new Node;
        header->next   = trailer;	// head points to trailer
        trailer->prev  = header;	// trailer points to head
      }
      int size() const 		// list size
        { return sz; }
      bool isEmpty() const 		// is the list empty?
        { return (sz == 0); }
      bool isFirst(const Position& p) const	// is this the first?
     {
        NodePtr v = nodePtr(p);
        return v->prev == header;
      }
      bool isLast(const Position& p) const 	// is this the last?
      {
        NodePtr v = nodePtr(p);
        return v->next == trailer;
      }
      // ...
        
// Code Fragment: NodeList2

      // ... (continuation of NodeList)
      Position first() const 				// return first element
      {
        return Position(header->next);
      }
      Position before(const Position& p) const 		// return item before p
      {
        NodePtr v = nodePtr(p);
        NodePtr prev = v->prev;
        return Position(prev);
      }
      Position insertAfter(const Position& p, const Object& element)
         {			// insert after p
        NodePtr v = nodePtr(p);
        sz++;
        NodePtr newNode  = new Node(element, v, v->next);
        v->next->prev    = newNode;				// link node into list
        v->next	     = newNode;
        return Position(newNode);
      }
      void remove(const Position& p)			// remove a given node
      {
        sz--;
        NodePtr v = nodePtr(p);
        v->prev->next    = v->next;				// unlink from the list
        v->next->prev    = v->prev;
        delete v;
      }
      void replaceElement(const Position& p, const Object& element)
      {			// replace element
        NodePtr v  = nodePtr(p);
        v->element = element;
      }
      // ... (some functions omitted)
    };


// Code Fragment: Sequence
template <typename Object>				// Sequence interface
class Sequence : public NodeList<Object>, public ArrayVector<Object> {
public:                                         	// "bridging" methods
  Position atRank(int rank) const;
  int rankOf(Position position) const;
};

// Code Fragment: NodeSequence1
template <typename Object>
class NodeSequence : public NodeList<Object> {
protected: 						// utilities
  void checkRank(int rank) const 			// check for valid rank
  {
    if (rank < 0 || rank >= sz);
      
  }
public:
  typedef NodeList<Object>::Position Position;
  Position atRank(int rank) const; 			// position of rank
     
  int rankOf(const Position& p) const; 			// get rank of element
    
  Object elemAtRank (int rank) const			// element at this rank
     {
    checkRank(rank);
    return atRank(rank).element();
  }
  void insertAtRank (int rank, const Object& element)	// insert at given rank
      {
    if (rank == size())					// no checkRank if last
      insertLast(element);
    else {
      checkRank(rank);
      insertBefore( atRank(rank), element );
    }
  }
  void removeAtRank (int rank)				// remove from rank
      {
    checkRank(rank);
    Position p = atRank(rank);				// position to remove
    remove(p);
  }
  void replaceAtRank (int rank, const Object& element)	// replace at rank
      {
    checkRank(rank);
    replaceElement( atRank(rank), element );
  }
};

// Code Fragment: NodeSequence2
    template <typename Object>
    NodeSequence<Object>::Position NodeSequence<Object>::
    atRank(int rank) const 					// position of rank
        {
      NodePtr v;
      checkRank(rank);
      if (rank <= size()/2) {				// scan forward from head
        v = header->next;
        for (int i = 0; i < rank; i++)
          v = v->next;
      }
      else {						// scan back from tail
        v = trailer->prev;
        for (int i = 1; i < size()-rank; i++)
          v = v->prev;
      }
      return Position(v);
    }

    template <typename Object>
    int NodeSequence<Object>::
    rankOf(const Position &p) const 			// get rank of position
      {
      NodePtr v = first();
      int i = 0;
      while (v != trailer) {				// search for p.node
        if (p.node == v) return i;				// found it here
        v = v->next;					// else advance
        i++;
      }							// did not find it?
     
    }
int main() { return 0; }
