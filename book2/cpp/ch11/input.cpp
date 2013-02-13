#include <iostream>
#include <string>
#include <cctype>

using namespace std;

#include "error.h"
#include "input.h"

bool is_operator(string s)
/* PURPOSE:  Test if a token is an operator
   RECEIVES: s - the token
   RETURNS:  true if s is one of: + - * / ^
*/
{  return s == "+" or s == "-" or s == "*" or s == "/" or s == "^";
}

void skip_whitespace()
/* PURPOSE:  Skip all white space in standard input
*/
{  char ch;
   do
   {  cin.get(ch);
      if (cin.fail()) return;
   } while (isspace(ch));
   cin.unget();
}

string next_number()
/* PURPOSE:  read the next number from standard input
   RETURNS:  the next number as a string
*/
{  string r;
   bool more = true;
   while (more)
   {  char ch;
      cin.get(ch);
      if (cin.fail())
         more = false;
      else if (isdigit(ch))
         r = r + ch;
      else
      {
         cin.unget();
         more = false;
      }
   }
   return r;
}

string next_token()
/* PURPOSE:  read the next token from standard input
   RETURNS:  the next token
*/
{  skip_whitespace();
   char ch;
   cin.get(ch);
   if (cin.fail()) return "";   
   if (isdigit(ch))
   {
      cin.unget();
      return next_number();
   }
	else
   {  string token;
      token = token + ch;
      if (is_operator(token) or token == "(" or token == ")"
            or token == "=")
         return token;
      else
      {  string message = "Unexpected input ";
         error(message + ch);
         return "";
      }
   }
}
