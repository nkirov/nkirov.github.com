// Nikolay Kirov F000000

#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    cout << "Enter coordinates for vertex A: ";
    double ax, ay;
    cin >> ax >> ay;
    cout << "Enter coordinates for vertex B: ";
    double bx, by;
    cin >> bx >> by; 
    cout << "Enter coordinates for vertex C: ";
    double cx, cy;
    cin >> cx >> cy; 
    
    double ab = sqrt((ax - bx)*(ax - bx) + (ay - by)*(ay - by));
    double ac = sqrt((ax - cx)*(ax - cx) + (ay - cy)*(ay - cy));
    double bc = sqrt((bx - cx)*(bx - cx) + (by - cy)*(by - cy));
    double max = ab;
    if (ac > max) max = ac;
    if (bc > max) max = bc;
    
    cout << "The length of the longest side is " << max << endl; 
    return 0;
}
