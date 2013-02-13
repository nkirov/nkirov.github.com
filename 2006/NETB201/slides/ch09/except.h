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
/**
 * Exception thrown on performing top or pop of an empty stack.
 */
class NonexistentElementException : public RuntimeException {  
public:
  NonexistentElementException(const string& err) : RuntimeException(err) {}
};
  
