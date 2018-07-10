#include <iostream>
using namespace std;

template <typename Key, typename Element>
class Item {					// a (key, element) pair
private:
    Key	    _key;				// key value
    Element   _elem;				// element
public:
    Item(const Key& k = Key(), const Element& e = Element())
    : _key(k), _elem(e) { }			// constructor
    const Key& key() const 			// gets the key (read only)
    { return _key; }
    Element& element()				// gets the element
    {
        cout << "nonconstant ";
        return _elem;
    }
    const Element& element() const 		// gets the element (read only)
    {
        cout << "constant ";
        return _elem;
    }
    void setKey(const Key& k)			// sets the key value
    { _key = k; }
    void setElement(const Element& e)		// sets the element
    { _elem = e; }
};

int main()
{
    Item<int, char> it1, it2(5,'W');
    const Item<int, char> it3(10,'Z');
    
    cout << it1.key() << " " << it1.element() << endl;
    cout << it2.key() << " " << it2.element() << endl;
    cout << it3.key() << " " << it3.element() << endl;
    
    it1.element() = 'X';
    cout << endl;
    it2 = it3;
    
    cout << it1.key() << " " << it1.element() << endl;
    cout << it2.key() << " " << it2.element() << endl;
    cout << it3.key() << " " << it3.element() << endl;
    return 0;
}

