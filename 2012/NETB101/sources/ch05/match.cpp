#include <iostream>
#include <string>

using namespace std;

/**
   Finds the index of the first occurrence of match in str
   @param str the string that is being searched
   @param match the substring that is being matched 
   @return the first index at which match occurs in str, or -1 if it doesn't
   occur anywhere
*/
int find_index(string str, string match)
{
   int n = match.length();
   for (int i = 0; i <= str.length() - match.length(); i++)
   {
      if (str.substr(i, n) == match) { return i; }
   }
   return -1;
}

/**
   Replaces the first occurrence of match in str with repl.
   @param str the string that is being edited
   @param match the string that is being replaced 
   @param repl the replacement string
*/
void replace_first(string& str, string match, string repl)
{
   int i = find_index(str, match);
   if (i == -1) { return; } // no match
   str = str.substr(0, i) + repl + str.substr(i + match.length());
}

int main()
{
   string river = "Mississippi";
   replace_first(river, "ss", "n");
   cout << river << endl;
   cout << "Expected: Minissippi" << endl;
   replace_first(river, "ss", "n");
   cout << river << endl;
   cout << "Expected: Mininippi" << endl;
   replace_first(river, "ss", "n"); // no more match--should do nothing
   cout << river << endl;
   cout << "Expected: Mininippi" << endl; 
   return 0;
}
