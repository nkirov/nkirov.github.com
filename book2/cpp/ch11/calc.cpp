
#include <iostream>
#include <string>

using namespace std;

#include "stack.h"
#include "input.h"
#include "eval.h"
#include "error.h"

int main()
{  Stack numstack;
	Stack opstack;

	while (true)
	{  string s = next_token();
		if (is_operator(s))
		{  if (opstack.is_empty())
				opstack.push(s);
			else
			{  string old_op = opstack.pop();
				if (precedence(s) > precedence(old_op))
					opstack.push(old_op);
				else
					evaluate(numstack, old_op);
				opstack.push(s);
			}
		}
		else if (s == "(")
			opstack.push(s);
		else if (s == ")")
		{  bool more = true;
			while (more)
			{  if (opstack.is_empty()) error("No matching (");
				string old_op = opstack.pop();
				if (old_op == "(") more = false;
				else evaluate(numstack, old_op);
			}
		}
		else if (s == "=")
		{  while (not opstack.is_empty())
			{  string old_op = opstack.pop();
				if (old_op == "(") error("No matching )");
				else evaluate(numstack, old_op);
			}
			if (numstack.is_empty()) error("Syntax error");
			cout << numstack.pop() << "\n";
			if (not numstack.is_empty()) error("Syntax error");
		}
		else if (s == "") /* end of input */
         return 0;
		else /* must be a number */
			numstack.push(s);
	}
}
