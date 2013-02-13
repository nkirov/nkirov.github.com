#include <iostream>
#include <vector>

using namespace std;

bool lineSegmentsIntersect(int xstart1, int ystart1, int xend1, int yend1, int xstart2, int ystart2, int xend2, int yend2)
{
     double Ua, Ub, den = ( ( yend2 - ystart2 ) * ( xend1 - xstart1 ) - ( xend2 - xstart2 ) * ( yend1 - ystart1 ) );
     
     if( den == 0 ) return false;
     else
     {
            Ua = ( ( xend2 - xstart2 ) * ( ystart1 - ystart2 ) - ( yend2 - ystart2 ) * ( xstart1 - xstart2 ) ) / den;
                                             
            Ub = ( ( xend1 - xstart1 ) * ( ystart1 - ystart2 ) - ( yend1 - ystart1 ) * ( xstart1 - xstart2 ) ) / den;
                                             
            if( Ua > 0 && Ua < 1 && Ub > 0 && Ub < 1 ) return true;
     }           
     
     return false;
}

int main()
{
    int n, xstart, ystart, xend, yend, xleft, ytop, xright, ybottom;
    vector<char> res;
    
    cin >> n;
    
    for( int i = 0; i < n; i++)
    {
         cin >> xstart >> ystart >> xend >> yend >> xleft >> ytop >> xright >> ybottom;
    
        if( lineSegmentsIntersect(xstart, ystart, xend, yend, xleft, ytop, xright, ytop) ||
            lineSegmentsIntersect(xstart, ystart, xend, yend, xright, ytop, xright, ybottom) ||
            lineSegmentsIntersect(xstart, ystart, xend, yend, xright, ybottom, xleft, ybottom) ||
            lineSegmentsIntersect(xstart, ystart, xend, yend, xleft, ybottom, xleft, ytop) )
            res.push_back('T');
            else
            res.push_back('F');
    }
    
    for( int k = 0; k < res.size(); k++ )
         cout << res[ k ] << endl;
    
    system( "PAUSE" );
    
    return( 0 );
}
