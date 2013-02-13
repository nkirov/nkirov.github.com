// input.cpp
#include <iostream>
#include <string>
#include <cctype>
using namespace std;

#include "error.h"
#include "input.h"

bool is_operator(string s)
{ return s == "+" or s == "-" or
         s == "*" or s == "/" or s == "^";
}

void skip_whitespace()
{ char ch;
  do
  { cin.get(ch);
    if (cin.fail()) return;
  }  
  while (isspace(ch));
  cin.unget();
}

string next_number()
{ string r;
  bool more = true;
  while (more)
  { char ch;
    cin.get(ch);
    if (cin.fail())  more = false;
    else if (isdigit(ch))  r = r + ch;
    else cin.unget();
    more = false;
  }
  return r;
}

string next_token()
{ skip_whitespace();
  char ch;
  cin.get(ch);
  if (cin.fail()) return "";
  if (isdigit(ch)) { cin.unget(); return next_number(); }
  else
  { string token;
    token = token + ch;
    if (is_operator(token) or token == "(" or token == ")"
                           or token == "=") return token;
    else
    { string message = "Unexpected input ";
      error(message + ch);
      return "";
    }
  }
}
