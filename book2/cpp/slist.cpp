// slist.cpp
#include <iostream>
using namespace std;

struct Node { char data; Node *next;};
Node *top;

bool insert(Node *pt, char c)  // insert after *pt
{ if (pt == NULL) return false;
  Node *node=new Node;
  if (node == NULL) return false;
  node -> data = c;
  node -> next = pt -> next;
  pt -> next = node;
  return true;
}
bool erase(Node *pt)     // erase pt->next
{ if ((pt == NULL) || (pt->next==NULL)) return false;
  Node *node=pt->next;
  pt->next=node->next;
  delete node;
  return true;
}
void print()
{ cout << "The list contains: ";
  Node *pt=top;
  while (pt!=NULL)
  { cout << pt->data << " ";
    pt=pt->next;
  }
  cout << "\n";
}
void create()
{ char ch;
  Node *pt=NULL, *ptold=NULL;
  top=NULL;
  while (cin >> ch)
  { pt=new Node;
//  if (pt==NULL) break;
    pt->data = ch;
    pt->next = NULL;
    if (top==NULL) top = pt;
    else   ptold->next = pt;
    ptold = pt;
  }
}
int main()
{ cout << "Enter some chars: ";
  create();        print();
  Node *pt=top; pt=pt->next;
  insert(pt, 'A'); print();
  erase(pt);       print();
  return 0;
}
