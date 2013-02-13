// huffman.cpp
#include <iostream>
using namespace std;

struct Huf {
   char id;
   int wh;
   Huf *left, *right;
};

struct List {
   List *next;
   Huf *tree;
};

List *head;

void CreateList();
void WriteList();
void DelList(List *);
void AddList(Huf *);
Huf *FindDels();
void CreateTree();
void rlrootTree(Huf *);

int main()
{ CreateList();
  WriteList();
  CreateTree();
  rlrootTree(head->tree);
  cout << endl;
  return 0;
}
void CreateList()
{ const int n=13;
//  char ch[n]={'¯','°','®','£',' ','¬','¨','­','±','²','³','ª','¤'};
  char ch[n]="ïðîãàìèíå ñòóêä";
  int   w[n]={ 1,  5,  2,  1,  3,  1,  4,  3,  1,  2,  2,  1,  1};
  List *l; Huf *h;
  head = 0;
  for (int i=0; i<n; i++)
  { h = new Huf;
    h->id = ch[i]; h->wh = w[i];
    h->left = 0; h->right = 0;
    l = new List;
    l->tree = h;
    l->next = head; head = l;
  }
}

void WriteList()
{ List *l = head;
  while (l)
  { cout << (l->tree)->id << "  " << (l->tree)->wh << endl;
    l = l->next;
  }
}

void DelList(List *l)
{ List *lp, *lc;
  if (l==head) { head=l->next; delete l; }
  else
  { lp = head; lc = lp->next;
   while (lc!=l) { lp = lc; lc = lc->next; }
   lp->next = lc->next; delete lc;
  }
}

void AddList(Huf *h)
{ List *l = new List;
  l->tree = h;
  l->next = head;
  head = l;
}

Huf *FindDels()
{ List *l = head, *sm = head;
  Huf *h;
  while (l)
  { if ((l->tree)->wh < (sm->tree)->wh) sm = l;
   l = l->next;
  }
  h = sm->tree;
  DelList(sm);
  return h;
}

void CreateTree()
{ Huf *h, *h1, *h2;
  while (head->next)
  { h1 = FindDels();
    h2 = FindDels();
    h = new Huf;
    h->id = ' '; h->wh = (h1->wh)+(h2->wh);
    h->left = h1; h->right = h2;
    AddList(h);
  }
}

void rlrootTree(Huf *h)
{ if (h)
  { rlrootTree(h->right);
    rlrootTree(h->left);
    cout << h->id << ":" << h->wh << " ";
  }
}
