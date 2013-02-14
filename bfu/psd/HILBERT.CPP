
#include "ccc_win.cpp"

int x, y, h=512;
int xold, yold;
void Hilbert();
void A(int i);
void B(int i);
void C(int i);
void D(int i);
void plot()
{
 Line l(Point(x,y), Point(xold, yold));
 cwin << l;
 xold = x;  yold = y;
}

void Hilbert()
{ int i=0;
  int x0=h/2, y0=h/2;
  do
  { i++; h/=2;
    x0+=h/2; y0+=h/2;
    xold=x=x0; yold=y=y0;
    A(i); }
  while (i<5);
}

void A(int i)
{ if (i==0) return;
  D(i-1); x-=h; plot();
  A(i-1); y-=h; plot();
  A(i-1); x+=h; plot();
  B(i-1);
}
void B(int i)
{ if (i==0) return;
  C(i-1); y+=h; plot();
  B(i-1); x+=h; plot();
  B(i-1); y-=h; plot();
  A(i-1);
}
void C(int i)
{ if (i==0) return;
  B(i-1); x+=h; plot();
  C(i-1); y+=h; plot();
  C(i-1); x-=h; plot();
  D(i-1);
}
void D(int i)
{ if (i==0) return;
  A(i-1); y-=h; plot();
  D(i-1); x-=h; plot();
  D(i-1); y+=h; plot();
  C(i-1);
}

int main()
{
 cwin.coord(0, h, h, 0);
 Hilbert();
 return 0;
}