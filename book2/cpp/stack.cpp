// stack.cpp
#include <cassert>
using namespace std;
#include "stack.h"

Stack::Stack() { top = 0; }

void Stack::push(string s)
{ if (top < data.size()) data[top] = s;
  else data.push_back(s);
  top++;
}

string Stack::pop()
{ assert(top > 0);
  top--;
  return data[top];
}

bool Stack::is_empty() const { return top == 0; }

