#include <iostream>
using namespace std;

class Point2D {
    int x, y;
public:
    Point2D(int xx = 0, int yy = 0) : x(xx), y(yy) {}
    int getX() const { return x; }
    int getY() const { return y; }
};

class LexCompare {					// lex comparison
public:
    int operator()(const Point2D& p1, const Point2D& p2) const {
        if	     (p1.getX() < p2.getX()) 		// first compare x
            return -1;
        else if  (p1.getX() > p2.getX())
            return +1;
        else if  (p1.getY() < p2.getY()) 		// x's equal; compare y
            return -1;
        else if  (p1.getY() > p2.getY())
            return +1;
        else 					// both x and y are equal
            return 0;
    }
};

template <typename Key, typename Comp>
class GenericClass {				// example class
    Comp comp;					// comparator object
    // ...
public:
    void memberFunction(Key p, Key q) {
        if (comp(p, q) > 0) cout << "p > q" << endl;
        else                cout << "p < q" << endl;
        // compare keys using comp
    }
};
// ...
	// compare p, q using LexCompare
// ...


int main()
{
    Point2D p, q(1, 0);					// p and q are points
    GenericClass<Point2D, LexCompare> concrete;
    concrete.memberFunction(p, q);
    return 0;
}

