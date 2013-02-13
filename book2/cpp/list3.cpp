// list3.cpp
#include <string>
#include <iostream>
#include <cassert>
using namespace std;

template<typename T>
class List;

template<typename T>
class Iterator;

template<typename T>
class Link  {
public:
   Link(T s);
private:
   T data;
   Link<T>* previous;
   Link<T>* next;
friend class List<T>;
friend class Iterator<T>;
};

template<typename T>
class List   {
public:
   List();
   void push_back(T s);
   void insert(Iterator<T> iter, T s);
   void erase(Iterator<T> iter);
   Iterator<T> begin();
   Iterator<T> end();
private:
   Link<T>* first;
   Link<T>* last;
};

template<typename T>
class Iterator   {
public:
   Iterator();
   T operator*() const;
   void operator++(int dummy);
   void operator--(int dummy);
   bool operator!=(Iterator<T> b) const;
private:
   Link<T>* position;
   Link<T>* last;
friend class List<T>;
};

template<typename T>
Link<T>::Link(T s)
{  data = s;
   previous = NULL;
   next = NULL;   }

template<typename T>
List<T>::List()
{  first = NULL;   last = NULL;   }

template<typename T>
void List<T>::push_back(T s)
{  Link<T>* newlink = new Link<T>(s);
   if (last == NULL)              /* list is empty */
   {  first = newlink;    last = newlink;  }
   else
   {  newlink->previous = last;
      last->next = newlink;
      last = newlink;
   }
}

template<typename T>
void List<T>::insert(Iterator<T> iter, T s)
{ if (iter.position == NULL)
  { push_back(s); return; }

  Link<T>* after = iter.position;
  Link<T>* before = after->previous;
  Link<T>* newlink = new Link<T>(s);
  newlink->previous = before;
  newlink->next = after;
  after->previous = newlink;
  if (before == NULL) first = newlink; /* insert at beginning */
  else         before->next = newlink;
}

template<typename T>
void List<T>::erase(Iterator<T> iter)
{ assert(iter.position != NULL);
  Link<T>* remove = iter.position;
  Link<T>* before = remove->previous;
  Link<T>* after = remove->next;
  if (remove == first) first = after;
  else          before->next = after;
  if (remove == last) last = before;
  else     after->previous = before;
  iter.position = after;
  delete remove;
}

template<typename T>
Iterator<T> List<T>::begin()
{ Iterator<T> iter;
  iter.position = first;
  iter.last = last;
  return iter;
}

template<typename T>
Iterator<T> List<T>::end()
{ Iterator<T> iter;
  iter.position = NULL;
  iter.last = last;
  return iter;
}

template<typename T>
Iterator<T>::Iterator()
{ position = NULL; last = NULL; }

template<typename T>
T Iterator<T>::operator*() const
{ assert(position != NULL);
  return position->data;
}

template<typename T>
void Iterator<T>::operator++(int dummy)
{ assert(position != NULL);
  position = position->next;
}

template<typename T>
void Iterator<T>::operator--(int dummy)
{ if (position == NULL)  position = last;
  else                   position = position->previous;
  assert(position != NULL);
}

template<typename T>
bool Iterator<T>::operator!=(Iterator<T> b) const
{ return position != b.position; }

int main()
{ List<string> staff;
  staff.push_back("Cracker, Carl");
  staff.push_back("Hacker, Harry");
  staff.push_back("Lam, Larry");
  staff.push_back("Sandman, Susan");

/* add a value in fourth place */
  Iterator<string> pos;
  pos = staff.begin();
  pos++;   pos++;   pos++;
  staff.insert(pos, "Reindeer, Rudolf");

/* remove the value in second place */
  pos = staff.begin();
  pos++;
  staff.erase(pos);

/* print all values */
  for (pos = staff.begin(); pos != staff.end(); pos++)
     cout << *pos << "\n";
   return 0;
}
