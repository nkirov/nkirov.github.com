#include <cassert>

using namespace std;

#include "stack.h"

Stack::Stack()
{	top = 0;
}

void Stack::push(string s)
/* PURPOSE:  add a value onto the top of the stack
   RECEIVES: s - the new value
*/
{  if (top < data.size()) data[top] = s;
	else data.push_back(s);
	top++;
}

string Stack::pop()
/* PURPOSE:  remove the value at the top of the stack
   RETURNS:  the value that was removed
*/
{  assert(top > 0);
	top--;
	return data[top];
}

bool Stack::is_empty() const
/* RETURNS:  true if the stack is empty
*/
{  return top == 0;
}
