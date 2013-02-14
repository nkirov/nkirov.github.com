#include <iostream.h>
//using namespace std;

struct node
{ int info; node *pLeft, *pRight; };

class tree {
public:
   tree();
   void print() const { pr(root); }
private:
   node *root;
   void AddNode(int, node* &);
   void pr(const node *) const;
};

tree::tree()
{  root = NULL;
   int x;
   while (cin >> x, !cin.fail()) AddNode(x, root);
}
void tree::AddNode(int x, node* &p)
{  if (p == NULL)
   {  p = new node;
      p->info = x;
      p->pLeft = p->pRight = NULL;
   }
   else AddNode(x, x < p->info ? p->pLeft : p->pRight);
}

void tree::pr(const node *p)const
{  if (p)
   {  pr(p->pLeft);
      cout << p->info << " ";
      pr(p->pRight);
   }
}

int main()
{  cout << "Enter some integers to be placed in a binary tree,\n"
	<< "followed by /:\n";
   tree t;
   cout << "Tree contents (in ascending order):\n";
   t.print();
   cout << endl;
   return 0;
}