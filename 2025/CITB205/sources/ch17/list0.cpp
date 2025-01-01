#include <string>
#include <iostream>
#include <cassert>
using namespace std;

/* forward declarations */
class List;
class Iterator;

/** A class to hold the nodes of the linked list.
*/
class Node {
public:
   /** Constructs a node for a given data value.
       @param s the data to store in this node
   */
   Node(string s);
private:
   string data;
   Node* previous;
   Node* next;
friend class List;
friend class Iterator;
};
   
/** An iterator denotes a position in the list or
    past the end of the list.
*/
class Iterator {
public:
   /** Constructs an iterator that is not attached to any list.
   */
   Iterator();
   /** Looks up the value at a position.
       @return the value of the Node to which the iterator 
       points
   */
   string operator*() const;
   /** Advances the iterator to the next position.
   */
   void operator++(int dummy);
   /** Moves the iterator to the previous position.
   */
   void operator--(int dummy);
   /** Compares two iterators.
       @param b the iterator to compare with this iterator
       @return true if this iterator and b are equal
   */
   bool operator==(Iterator b) const;
   /** Compares two iterators.
       @param b the iterator to compare with this iterator
       @return true if this iterator and b are not equal
   */
   bool operator!=(Iterator b) const;
private:
   Node* position;
   Node* last;
friend class List;
};

/** A linked list of values of a given type.
    @param T the type of the list values
*/
class List {
public:
   /** Constructs an empty list.
   */
   List();
   /** Constructs a list as a copy of another list.
       @param b the list to copy
   */
   List(const List& b);
   /** Deletes all nodes of this list.
   */
   ~List();
   /** Assigns another list to this list.
       @param b the list to assign
       @return a reference to this list
   */
   List& operator=(const List& b);
   /** Appends an element to the list.
       @param s the value to append
   */
   void push_back(string s);
   /** Inserts an element into the list.
       @param iter the position before which to insert
       @param s the value to append
   */
   void insert(Iterator iter, string s);
   /** Removes an element from the list.
       @param i the position to remove
       @return an iterator pointing to the element after the
       erased element
   */
   Iterator erase(Iterator i);
   /** Gets the beginning position of the list.
       @return an iterator pointing to the beginning of the list
   */
   Iterator begin() const;
   /** Gets the past-the-end position of the list.
       @return an iterator pointing past the end of the list
   */
   Iterator end() const;

private:
   /** Copies another list to this list.
       @param b the list to copy
   */
   void copy(const List& b);
   /** Deletes all nodes of this list.
   */
   void free();
   Node* first;
   Node* last;
};

List::List()
{  first = NULL;
   last = NULL;
}

List::~List()
{  free();
}

List::List(const List& b)
{  first = NULL;
   last = NULL;
   copy(b);
}

List& List::operator=(const List& b)
{  if (this != &b)
   {  free();
      copy(b);
   }
   return *this;
}

void List::push_back(string s)
{  Node* newnode = new Node(s);
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

void List::insert(Iterator iter, string s)
{  if (iter.position == NULL)
   {  push_back(s);
      return;
   }

   Node* after = iter.position;
   Node* before = after->previous;
   Node* newnode = new Node(s);
   newnode->previous = before;
   newnode->next = after;
   after->previous = newnode;
   if (before == NULL) /* insert at beginning */
      first = newnode;
   else
      before->next = newnode;
}

Iterator List::erase(Iterator i)
{  Iterator iter = i;
   assert(iter.position != NULL);
   Node* remove = iter.position;
   Node* before = remove->previous;
   Node* after = remove->next;
   
   if (remove == first) first = after;
   else          before->next = after;
   if (remove == last) last = before;
   else     after->previous = before;
   
   iter.position = after;
   delete remove;
   return iter;
}

Iterator List::begin() const
{  Iterator iter;
   iter.position = first;
   iter.last = last;
   return iter;
}

Iterator List::end() const
{  Iterator iter;
   iter.position = NULL;
   iter.last = last;
   return iter;
}

Iterator::Iterator()
{  position = NULL;
   last = NULL;
}

string Iterator::operator*() const
{  assert(position != NULL);
   return position->data;
}

void Iterator::operator++(int dummy)
{  assert(position != NULL);
   position = position->next;
}

void Iterator::operator--(int dummy)
{  if (position == NULL) position = last;
   else                  position = position->previous;
   assert(position != NULL);
}

bool Iterator::operator==(Iterator b) const
{  return position == b.position;
}

bool Iterator::operator!=(Iterator b) const
{  return position != b.position;
}

Node::Node(string s)
{  data = s;
   previous = NULL;
   next = NULL;
}

void List::copy(const List& b)
{  for (Iterator p = b.begin(); p != b.end(); p++)
      push_back(*p);
}

void List::free()
{  while (begin() != end()) erase(begin());
}

void print(const List& l)
{
    Iterator pos;
    for (pos = l.begin(); pos != l.end(); pos++)
        cout << *pos << "\n";
}

int main()
{  List staff;

   staff.push_back("Cracker, Carl");
   staff.push_back("Hacker, Harry");
   staff.push_back("Lam, Larry");
   staff.push_back("Sandman, Susan");
    
    List newstaff(staff); // copy constructor
    cout << "newstaff1:" << endl;
    print(newstaff);

    Iterator pos;
   /* add a value in fourth place */
   pos = staff.begin();
   pos++;
   pos++;
   pos++;
   staff.insert(pos, "Reindeer, Rudolf");

   /* remove the value in second place */
   pos = staff.begin();
   pos++;
   staff.erase(pos);

   cout << "staff1:" << endl;
   print(staff);
   cout << "newstaff2:" << endl;
   print(newstaff);
    
   staff = newstaff; // overloaded assigment operator
   cout << "staff2:" << endl;
   print(staff);
                    // destructor
   return 0;
}
