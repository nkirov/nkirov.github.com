// squeue.cpp
#include <iostream>
using namespace std;

struct Node { char data; Node *next;};
Node *top, *end;

bool append(char c) // insert after last
{ if (end==NULL) return false;
  Node *node=new Node;
  if (node == NULL) return false;
  node -> data = c;
  node -> next = NULL;
  end -> next = node;
  end = node;
  return true;
}
bool erase()       // erase first
{ if (top==NULL) return false;
  Node *node=top;
  top=top->next;
  delete node;
  return true;
}
void print()
{ cout << "The queue contains: ";
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
  end = pt;
}
int main()
{ cout << "Enter some chars: ";
  create();    print();
  append('A'); print();
  erase();     print();
  return 0;
}
