#include <string>
#include <iostream>
#include <cassert>
using namespace std;

template<typename T> class List;

template<typename T>
class Node {
public:
   Node(T s);
private:
   T data;
   Node<T>* previous;
   Node<T>* next;
friend class List<T>;
friend class List<T>::Iterator;
};
   
template<typename T>
class List {
public:
   List();
   List(const List<T>& b);
   ~List();
   List<T>& operator=(const List<T>& b);
   class Iterator;

   void push_back(T s);
   void insert(Iterator iter, T s);
   Iterator erase(Iterator i);
   Iterator begin();
   Iterator end();
private:
   void copy(const List<T>& b);
   void free();
   Node<T>* first;
   Node<T>* last;
};

template<typename T>
class List<T>::Iterator {
public:
   Iterator();
   T operator*() const;
   void operator++(int dummy);
   void operator--(int dummy);
   bool operator==(Iterator b) const;
   bool operator!=(Iterator b) const;
private:
   Node<T>* position;
   Node<T>* last;
friend class List<T>;
};

template<typename T>
List<T>::List()
{  first = NULL;
   last = NULL;
}

template<typename T>
List<T>::~List()
{  free();
}

template<typename T>
List<T>::List(const List<T>& b)
{  first = NULL;
   last = NULL;
   copy(b);
}

template<typename T>
List<T>& List<T>::operator=(const List<T>& b)
{  if (this != &b)
   {  free();
      copy(b);
   }
   return *this;
}

template<typename T>
void List<T>::push_back(T s)
{  Node<T>* newnode = new Node<T>(s);
   if (last == NULL) /* list is empty */
   {  first = newnode;
      last = newnode;
   }
   else
   {  newnode->previous = last;
      last->next = newnode;
      last = newnode;
   }
}

template<typename T>
void List<T>::insert(Iterator iter, T s)
{  if (iter.position == NULL)
   {  push_back(s);
      return;
   }
   Node<T>* after = iter.position;
   Node<T>* before = after->previous;
   Node<T>* newnode = new Node<T>(s);
   newnode->previous = before;
   newnode->next = after;
   after->previous = newnode;
   if (before == NULL) /* insert at beginning */
      first = newnode;
   else
      before->next = newnode;
}

template<typename T>
List<T>::Iterator List<T>::erase(Iterator i)
{  Iterator iter = i;
   assert(iter.position != NULL);
   Node<T>* remove = iter.position;
   Node<T>* before = remove->previous;
   Node<T>* after = remove->next;
   
   if (remove == first) first = after;
   else          before->next = after;
   if (remove == last) last = before;
   else     after->previous = before;
   
   iter.position = after;
   delete remove;
   return iter;
}

template<typename T>
List<T>::Iterator List<T>::begin()
{  Iterator iter;
   iter.position = first;
   iter.last = last;
   return iter;
}

template<typename T>
List<T>::Iterator List<T>::end()
{  Iterator iter;
   iter.position = NULL;
   iter.last = last;
   return iter;
}

template<typename T>
List<T>::Iterator::Iterator()
{  position = NULL;
   last = NULL;
}

template<typename T>
T List<T>::Iterator::operator*() const
{  assert(position != NULL);
   return position->data;
}

template<typename T>
void List<T>::Iterator::operator++(int dummy)
{  assert(position != NULL);
   position = position->next;
}

template<typename T>
void List<T>::Iterator::operator--(int dummy)
{  if (position == NULL) position = last;
   else                  position = position->previous;
   assert(position != NULL);
}

template<typename T>
bool List<T>::Iterator::operator==(Iterator b) const
{  return position == b.position;
}

template<typename T>
bool List<T>::Iterator::operator!=(Iterator b) const
{  return position != b.position;
}

template<typename T>
Node<T>::Node(T s)
{  data = s;
   previous = NULL;
   next = NULL;
}

template<typename T>
void List<T>::copy(const List<T>& b)
{  for (Iterator p = b.begin(); p != b.end(); p++)
      push_back(*p);
}

template<typename T>
void List<T>::free()
{  while (begin() != end()) erase(begin());
}

int main()
{  List<string> staff;

   staff.push_back("Cracker, Carl");
   staff.push_back("Hacker, Harry");
   staff.push_back("Lam, Larry");
   staff.push_back("Sandman, Susan");

   /* add a value in fourth place */
   List<string>::Iterator pos;
   pos = staff.begin();
   pos++;
   pos++;
   pos++;

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
