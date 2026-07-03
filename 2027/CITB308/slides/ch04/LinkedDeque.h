#include <iostream>
#include <string>
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
class DequeEmptyException : public RuntimeException {  
public:
  DequeEmptyException(const string& err) : RuntimeException(err) {}
};

template <typename Object>
class LinkedDeque {
protected:                      // local node structure
  struct Node {					// a node in the stack
    Object element;				// element
    Node* prev;                 // previous node
    Node*  next;				// next node
    Node(const Object& e = Object(), Node* p = NULL, Node* n = NULL)
      : element(e), prev(p), next(n) { }	// constructor
  };
  typedef Node* NodePtr;	// pointer type to node
private:                    // member data
  NodePtr header;			// pointer to header sentinel
  NodePtr trailer;		    // pointer to trailer sentinel
  int sz;					// number of elements
public:
  LinkedDeque() 				// default constructor
  { header = new Node;
    trailer = new Node;
    header->next = trailer;		// trailer follows header
    trailer->prev = header;		// header precedes trailer
    sz = 0;
  }
  // return first element
  Object& first() throw(DequeEmptyException) 
  {  if (isEmpty())
       throw DequeEmptyException("First of empty deque");
     return header->next->element;
  }
  void insertFirst(const Object& e)		// insert new node at head
  { NodePtr oldFirst = header->next;	// old first node
    NodePtr t = new Node(e, header, oldFirst);	// new node to insert
    oldFirst->prev = t;
    header->next = t;
    sz++;
  }
  void removeLast() 	// remove node at tail
  { if (isEmpty())
      throw DequeEmptyException("Remove on empty deque");
    NodePtr old = trailer->prev;		// node to remove
    NodePtr newLast = old->prev;		// new last node
    trailer->prev = newLast;
    newLast->next = trailer;
    sz--;
    delete old;
  }
  bool isEmpty() const
  { return header->next == trailer; }
  void print() const
  {  cout << "  Contains: " << endl;
     for (NodePtr elem = header -> next; elem != trailer; elem = elem -> next)
         cout << elem -> element << endl;
  }  
    
  // ... (many functions omitted)
};


