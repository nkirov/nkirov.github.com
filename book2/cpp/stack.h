// stack.h
#ifndef STACK_H
#define STACK_H
#include <vector>
#include <string>
using namespace std;

class Stack  {
public:
 Stack();
 void push(string s);
 string pop();
 bool is_empty() const;
private:
 vector<string> data;
 int top;
};
#endif
