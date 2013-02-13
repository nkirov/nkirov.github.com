#include "StackExcept.cpp"

// Code Fragment: ArrayStack1

template <typename Object>
class ArrayStack {
private:                    // member data
  enum { CAPACITY = 1000 };	// default capacity of stack
  int       capacity;		// actual length of stack array
  Object*   S;				// the stack array
  int       t;				// index of the top of the stack
public:
  					// constructor given max capacity
  ArrayStack(int cap = CAPACITY) {
    capacity  = cap;
    S         = new Object[capacity];
    t         = -1;
  }
  int size() const  			// number of elements in the stack
    { return (t + 1); }
  bool isEmpty() const 			// is the stack empty?
    { return (t < 0); }
  					// return the top of the stack
  Object& top() throw(StackEmptyException) {
    if (isEmpty())
      throw StackEmptyException("Access to empty stack");
    return S[t];
  }
  					// push object onto the stack
  void push(const Object& elem) throw(StackFullException) {
    if (size() == capacity)
      throw StackFullException("Stack overflow");
    S[++t] = elem;
  }
 					// pop the stack
  Object pop() throw(StackEmptyException) {
    if (isEmpty())
      throw StackEmptyException("Access to empty stack");
    return S[t--];
  }
  // ...
//Code Fragment: ArrayStack2

  // ... (continuation of ArrayStack)
  ArrayStack(const ArrayStack& st);	// copy constructor
  					// assignment operator constructor
  ArrayStack& operator=(const ArrayStack& st);
  ~ArrayStack() 			// destructor
    { delete [] S; }
};

template <typename Object>		// copy constructor
ArrayStack<Object>::
ArrayStack(const ArrayStack& st) {
  capacity  = st.capacity;
  t         = st.t;
  S         = new Object[capacity];
  for (int i = 0; i <= t; i++) {	// copy contents
    S[i] = st.S[i];
  }
}

template <typename Object>		// assignment operator
ArrayStack<Object>& ArrayStack<Object>::
operator=(const ArrayStack& st) {
  if (this != &st) {			// avoid self copy (x = x)
    delete [] S;			    // delete old contents
    capacity  = st.capacity;
    t         = st.t;
    S         = new Object[capacity];
    for (int i = 0; i <= t; i++) {	// copy contents
      S[i] = st.S[i];
    }
  }
  return *this;
}

int main()
{ ArrayStack<int> numbers(10);
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
