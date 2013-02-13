
#ifndef EVAL_H
#define EVAL_H
#include <string>
using namespace std;

#include "stack.h"

int precedence(string s);
void evaluate(Stack& num, string op);

#endif
