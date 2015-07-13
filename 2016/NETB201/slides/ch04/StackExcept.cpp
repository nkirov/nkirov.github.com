#include <iostream>
#include <string>
using namespace std;
//Code Fragment: StackEmptyException

class RuntimeException {		// generic run-time exception
private:
  string errorMsg;
public:
  RuntimeException(const string& err) { errorMsg = err; }
  string getMessage() const { return errorMsg; }
};

/**
 * Exception thrown on performing top or pop of an empty stack.
 */
class StackEmptyException : public RuntimeException {  
public:
  StackEmptyException(const string& err) : RuntimeException(err) {}
};

/**
 * Exception thrown on performing push in a full stack.
 */
class StackFullException : public RuntimeException {  
public:
  StackFullException(const string& err) : RuntimeException(err) {}
};

inline std::ostream& operator<<(std::ostream& out, const RuntimeException& e)
  { return out << e.getMessage(); }

