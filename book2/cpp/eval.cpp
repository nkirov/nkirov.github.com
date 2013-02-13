// eval.cpp
#include <string>
#include <sstream>
#include <cmath>
using namespace std;

#include "stack.h"
#include "error.h"
#include "eval.h"

int precedence(string s)
{ if (s == "+" or s == "-")      return 1;
  else if (s == "*" or s == "/") return 2;
  else if (s == "^")             return 3;
  else                           return 0;
}

double string_to_double(string s)
{ istringstream instr(s);
  double x;
  instr >> x;
  return x;
}

string double_to_string(double x)
{ ostringstream outstr;
  outstr << x;
  return outstr.str();
}

void evaluate(Stack& num, string op)
{ if (num.is_empty()) error("Syntax error");
  double y = string_to_double(num.pop());
   if (num.is_empty()) error("Syntax error");
  double x = string_to_double(num.pop());
  double z;
  if (op == "^") z = pow(x, y);
  else if (op == "*") z = x * y;
  else if (op == "/")
  { if (y == 0) error("Divide by 0");
    else z = x / y;
  }
  else if (op == "+") z = x + y;
  else if (op == "-") z = x - y;
  else error("Syntax error");
  num.push(double_to_string(z));
}
