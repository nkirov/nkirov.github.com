// list2.cpp
#include <string>
#include <iostream>
#include <cassert>
using namespace std;

class List;
class Iterator;

class Link {
public:
   Link(string s);
private:
   string data;
   Link* previous;
   Link* next;
friend class List;
friend class Iterator;
};

class List {
public:
   List();
   void push_back(string s);
   void insert(Iterator iter, string s);
   void erase(Iterator iter);
   Iterator begin();
   Iterator end();
private:
   Link* first;
   Link* last;
};

class Iterator {
public:
   Iterator();
   string get() const;
   void next();
   void previous();
   bool not_equal(Iterator b) const;
private:
   Link* position;
   Link* last;
friend class List;
};

Link::Link(string s)
{ data = s;  previous = NULL;  next = NULL; }

List::List()
{ first = NULL; last = NULL; }

void List::push_back(string s)
{ Link* newlink = new Link(s);
  if (last == NULL)                      /* list is empty */
  { first = newlink; last = newlink; }
  else
  { newlink->previous = last;
    last->next = newlink;
    last = newlink;
  }
}

void List::insert(Iterator iter, string s)
{ if (iter.position == NULL)
  { push_back(s);  return;  }
  Link* after = iter.position;
  Link* before = after->previous;
  Link* newlink = new Link(s);
  newlink->previous = before;
  newlink->next = after;
  after->previous = newlink;
  if (before == NULL) first = newlink; /* insert at beginning */
  else         before->next = newlink;
}

void List::erase(Iterator iter)
{ assert(iter.position != NULL);
  Link* remove = iter.position;
  Link* before = remove->previous;
  Link* after = remove->next;
  if (remove == first) first = after;
  else          before->next = after;
  if (remove == last)  last = before;
  else      after->previous = before;
  iter.position = after;
  delete remove;
}

Iterator List::begin()
{ Iterator iter;
  iter.position = first;
  iter.last = last;
  return iter;
}

Iterator List::end()
{ Iterator iter;
  iter.position = NULL;
  iter.last = last;
  return iter;
}

Iterator::Iterator()
{  position = NULL;   last = NULL;  }

string Iterator::get() const
{ assert(position != NULL);
  return position->data;
}

void Iterator::next()
{ assert(position != NULL);
  position = position->next;
}

void Iterator::previous()
{ if (position == NULL)  position = last;
  else                   position = position->previous;
  assert(position != NULL);
}

bool Iterator::not_equal(Iterator b) const
{ return position != b.position; }

int main()
{ List staff;
  staff.push_back("Cracker, Carl");
  staff.push_back("Hacker, Harry");
  staff.push_back("Lam, Larry");
  staff.push_back("Sandman, Susan");

/* add a value in fourth place */
  Iterator pos;
  pos = staff.begin();
  pos.next();   pos.next();   pos.next();
  staff.insert(pos, "Reindeer, Rudolf");

/* remove the value in second place */
  pos = staff.begin();
  pos.next();
  staff.erase(pos);

/* print all values */
  for (pos = staff.begin(); pos.not_equal(staff.end());
       pos.next())   cout << pos.get() << "\n";
  return 0;
}
