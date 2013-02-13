#include <string>
#include <sstream>
#include <cmath>

using namespace std;

#include "stack.h"
#include "error.h"
#include "eval.h"

int precedence(string s)
/* PURPOSE:  Compute the precedence level of an operator
   RECEIVES: s - the operator
   RETURNS:  the precedence level (1 = lowest, 3 = highest)
*/
{  if (s == "+" or s == "-")
		return 1;
	else if (s == "*" or s == "/")
		return 2;
	else if (s == "^")
		return 3;
	else return 0;
}

double string_to_double(string s)
/* PURPOSE:  Convert a string to a floating-point value, e.g. "3.14" -> 3.14
   RECEIVES: s - a string representing a floating-point value
   RETURNS:  the equivalent floating-point value
*/   
{  istringstream instr(s);
   double x;
   instr >> x;
   return x;
}

string double_to_string(double x)
/* PURPOSE:  Convert a floating-point value to a string, e.g. 3.14 -> "3.14"
   RECEIVES: s - a floating-point value
   RETURNS:  the equivalent string
*/   
{  ostringstream outstr;
   outstr << x;
   return outstr.str();
}

void evaluate(Stack& num, string op)
/* PURPOSE:  Compute a new value and push it on the stack
   RECEIVES: num - the stack for the operands and result
             op - the operation to use
*/
{  if (num.is_empty()) error("Syntax error");
   double y = string_to_double(num.pop());
	if (num.is_empty()) error("Syntax error");
   double x = string_to_double(num.pop());
   double z;
	if (op == "^") z = pow(x, y);
	else if (op == "*") z = x * y;
	else if (op == "/")
	{  if (y == 0) error("Divide by 0");
		else z = x / y;
	}
	else if (op == "+") z = x + y;
	else if (op == "-") z = x - y;
	else error("Syntax error");
   num.push(double_to_string(z));
}
