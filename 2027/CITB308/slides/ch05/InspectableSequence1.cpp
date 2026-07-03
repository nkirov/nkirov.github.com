
template <typename Object>
class InspectableContainer 
{ public:
    int size() const;
    bool isEmpty() const; 
    class ObjectIterator {
    public:
      bool hasNext() const;
      Object next();       
    };
    ObjectIterator elements();      
};             

template <typename Object>
class InspectableVector : public InspectableContainer<Object> 
{ public:
    Object elemAtRank(int) const;
};

template <typename Object>
class Vector : public InspectableVector<Object> 
{ public:
    void replaceAtRank(int, Object);
    void insertAtRank(int, Object);
    void removeAtRank(int);
};      
      
template <typename Object>
class InspectableList : public InspectableContainer<Object> 
{ public:
    class Position;      
    Position first() const;
    Position last() const;
    Position before(Position);
    Position after(Position);
    class PositionIterator; 
    PositionIterator positions();
};

template <typename Object>
class List : public InspectableList<Object> 
{ public:
    typedef typename InspectableList<Object>::Position Position;  
    void replaceElement(Position, Object);
    void swapElements(Position, Object);
    Position insertFirst(Object);
    Position insertLast(Object);
    Position insertBefore(Position, Object);
    Position insertAfter(Position, Object);
    void remove(Position);
};    
    
template <typename Object>
class InspectableSequence : public InspectableVector<Object>, 
    InspectableList<Object>
{ public:
    typedef typename InspectableList<Object>::Position Position;       
    Position atRank(int);
    int rankOf(Position);
};       

template <typename Object>
class Sequence : public Vector<Object>, List<Object>, 
  InspectableSequence<Object> 
{};

