// bstree.cpp
#include <iostream>
using namespace std;

struct Node
{ int info;
  Node *pLeft, *pRight;
};
class Tree {
public:
   Tree();
   void print() const { pr(root); }
private:
   Node *root;
   void addNode(int, Node* &);
   void pr(const Node *) const;
};
Tree::Tree()
{ root = NULL;
  int x;
  while (cin >> x, !cin.fail()) addNode(x, root);
}
void Tree::addNode(int x, Node* &p)
{ if (p == NULL)
  { p = new Node;
    p->info = x;
    p->pLeft = p->pRight = NULL;
  }
  else addNode(x, x < p->info ? p->pLeft : p->pRight);
}
void Tree::pr(const Node *p)const
{ if (p)
  { pr(p->pLeft);
    cout << p->info << " ";
    pr(p->pRight);
  }
}
int main()
{ cout << "Enter some integers to be placed in a binary tree:\n";
  Tree t;
  cout << "Tree contents (in ascending order):\n";
  t.print();
  cout << endl;
  return 0;
}
