#include <stdio.h>
#include <math.h>

struct point {
    int x;
    int y;
};

struct point pt;
struct point maxpt = { 320, 200 };

int main()
{
    pt = maxpt;
    double dist;;
    dist = sqrt((double)pt.x * pt.x + (double)pt.y * pt.y);
    printf("%6.1f \n", dist);
}

struct rect {
    struct point pt1;
    struct point pt2;
};

struct rect screen;
// screen.pt1.x
