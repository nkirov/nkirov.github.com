/* bintree: 
   This program builds and searches a binary search 
   tree and prints its contents. The program produces 
   a frequency distribution of words read from a textfile. 
   We can also search the tree for a given word to inquire 
   how often that word occurs. 
*/ 
#include <fstream> 
#include <iomanip> 
#include <ctype.h> 
#include <string> 
using namespace std;

struct node 
{ char *pWord;
  int count;
  node *pLeft, *pRight;
};

class tree {
public:
   tree(ifstream &);
   ~tree() { DelTree(root); }
   void print() const { pr(root); }
   node *search() const;
   int ReadWord(istream &);
private:
   node *root;
   enum { buflen = 50 };
   char buf[buflen];
   void AddNode(node* &);
   void DelTree(node* &);
   void pr(const node *)const;
};

int tree::ReadWord(istream &input)
/* This function reads a word from the stream 'input'.
   It skips any leading nonalphabetic characters.
   Then the longest possible string of letters (no longer
   than buflen - 1) is read, converted to upper case and
   placed in 'buf'. Return value: success (1) or failure (0).
*/
{  char ch;
   int i;
   do
   {  input >> ch;
      if (input.fail()) return 0;
   }  while (!isalpha(ch));
   for (i=0; i<buflen-1; )
   {  buf[i++] = toupper(ch);
      input.get(ch);
      if (input.fail() || !isalpha(ch)) break;
   }
   buf[i] = '\0';
   return 1;
}
tree::tree(ifstream &input)
{  root = NULL;
   while (ReadWord(input)) AddNode(root);
}
void tree::DelTree(node* &p)
{  if (p)
   {  DelTree(p->pLeft); DelTree(p->pRight);
      delete[] p->pWord; delete p; p = NULL;
   }
}
void tree::AddNode(node* &p) // Add word in buf to tree
{  if (p == NULL)
   {  p = new node;
      p->pWord = new char[strlen(buf) + 1];
      strcpy(p->pWord, buf); p->count = 1;
      p->pLeft = p->pRight = NULL;
   }  else
   {  int code = strcmp(buf, p->pWord);
      if (code) AddNode(code < 0 ? p->pLeft : p->pRight);
      else p->count++;
   }
}
void tree::pr(const node *p)const
{  if (p)
   {  pr(p->pLeft);
      cout << setw(5) << p->count << " "
	   << p->pWord << endl;
      pr(p->pRight);
   }
}
node *tree::search()const
{  node *p = root;
   for (;;)
   {  if (p == NULL) return NULL;
      int code = strcmp(buf, p->pWord);
      if (code == 0) return p;
      p = (code < 0 ? p->pLeft : p->pRight);
   }
}
int main()
{  ifstream input;
   node *ptr;
   const int NameLen=50;
   char FileName[NameLen];
   cout << "Input file: ";
   cin >> setw(NameLen) >> FileName;
   input.open(FileName, ios::in);
   if (input.fail())
   {  cout << "Cannot open input file.\n"; exit(1);   }

   tree t(input);
   cout << "Frequency distribution:\n";
   t.print();
   for (;;)
   {  cout << "\nEnter a word, or type Ctrl+Z (or Ctrl+D)"
	      " to stop: ";
      if (t.ReadWord(cin) == 0) break;
// The word read by ReadWord has been placed in the buf
// class member. We now search the tree for this word:
      ptr = t.search();
      cout << "Number of occurrences: "
	   << (ptr ? ptr->count : 0) << endl;
   }
   return 0;
}