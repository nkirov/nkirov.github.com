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
class StackEmptyException : public RuntimeException {  
public:
  StackEmptyException(const string& err) : RuntimeException(err) {}
};

template <typename Object>
class LinkedStack {
protected:                     	// local node structure
    struct Node {				// a node in the stack
    Object element;				// element
    Node*  next;				// next pointer
    Node(const Object& e = Object(), Node* n = NULL)
      : element(e), next(n) { }	// constructor
  };
  typedef Node* NodePtr;    	// pointer type to node
private:                        // member data
  NodePtr tp;					// pointer to stack top
  int sz;					    // number of items in stack
public:
  LinkedStack()        			// default constructor
  { tp = NULL;
    sz = 0;
  }
  int size() const { return sz; }		// number of elements in stack
  bool isEmpty() const { return sz == 0; }	// is the stack empty?
  // return stack top
  Object& top() throw(StackEmptyException)
  { if (isEmpty())
      throw StackEmptyException("Top of empty stack");
    return tp->element;
  }
  void push(const Object& e)			// push element onto stack
  { NodePtr v = new Node(e, tp);
    tp = v;					// v is now the top
    sz++;
  }
  Object pop() throw(StackEmptyException) // pop top element
  { if (isEmpty())
      throw StackEmptyException("Pop of empty stack");
    NodePtr old = tp;				// node to remove
    tp = tp->next;
    sz--;
    Object result = old->element;  // element to return
    delete old;
    return result;
  }
  
protected:                      // protected utilities
  void removeAll()				// remove entire stack contents
  { while (!isEmpty()) pop(); }
  void copyFrom(const LinkedStack& ls);	// copy from ls

public:
  LinkedStack(const LinkedStack& ls)// copy constructor
    { copyFrom(ls); }				// copy new contents
  // assignment operator
  LinkedStack& operator=(const LinkedStack& ls)
  { if (this != &ls)	// avoid self copy (x = x)
    { removeAll();		// remove old contents
      copyFrom(ls);		// copy new contents
    }
    return *this;
  }
  ~LinkedStack()	 // destructor
    { removeAll(); } // destroy old contents
// ... (insert housekeeping functions here)
};

template <typename Object>			// copy from stack ls
void LinkedStack<Object>::copyFrom(const LinkedStack& ls)
{ tp = NULL;
  NodePtr p      = ls.tp;			// p is current node in ls
  NodePtr prev   = NULL;
  while (p != NULL)
  { NodePtr v = new Node(p->element, NULL);	// create copy of p
    if (tp == NULL) tp = v;			// if first node
    else prev->next = v;			// else link after prev
    prev  = v;
    p     = p->next;
  }
  sz = ls.sz;
}

int main()
{ LinkedStack<int> numbers;
  try 
  { for (int i=10; i < 100; i+=10) numbers.push(i);
    while (!numbers.isEmpty()) cout << numbers.pop() << endl;
    numbers.pop();  
  }  
  catch(StackEmptyException e)
  {  cerr << e;
     return 1;
  }  
  return 0;    
}    

