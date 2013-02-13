// topsort.cpp
#include <iostream>
using std::cin;
using std::cout;

struct Trailer;

struct Leader {
   int key, count;
   Trailer *tr;
   Leader *next;
};
struct Trailer {
   Leader *id;
   Trailer *next;
};
Leader *head=new Leader;

void Create();
Leader *L(int);
void Zero();
void Tsort();

int main()
{ Create();
  Zero();
  Tsort();
  return 0;
}
void Create()
{ Leader *p, *q;
  int x, y;
  head=0;
  while (cin >> x && cin >> y && !cin.eof())
  { p = L(x); q = L(y);
    Trailer *t = new Trailer;
    t->id = q;
    t->next = p->tr;
    p->tr = t;
    (q->count)++;
  }
}
Leader *L(int x)
{ Leader *p = head, *q;
  q = p; // q is the last element of the list
  while (p)
  { if ((p->key) == x) return p;
    q = p; p = p->next;
  }
  p = new Leader;
  p->key = x; p->count = 0; p->tr = 0; p->next = 0;
  if (q) q->next = p;
  else      head = p;
  return p;
}
void Zero()
{ Leader *p = head, *q;
  head = 0;
  while (p)
  { q = p; p = p->next;
/* nova zadacha za poleto next i ukazatelia head */
    if (!(q->count)) { q->next = head; head = q; }
  }
}
void Tsort()
{ Trailer *t;
  Leader *q = head, *p;
  while (q)
  { cout << (q->key) << ' ';
    t = q->tr;
    q = q->next;
    while (t)
    { p = t->id; (p->count)--;
      if (!(p->count)) { p->next = q; q = p; }
      t = t->next;
    }
  }
}
