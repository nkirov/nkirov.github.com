// eval.h
#ifndef EVAL_H
#define EVAL_H
#include <string>
#include "stack.h"
using namespace std;

int precedence(string s);
void evaluate(Stack& num, string op);
#endif
