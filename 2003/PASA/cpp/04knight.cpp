// Vasil Martinov Fn 20040004 BFU email: vmartinov@www.com
// Gergana Georgieva Fn 21040028
// zadacha 2 2a "Trudna zadacha"
// Borland C++ 3.01
#include <fstream.h>
#include <conio.h>
#include <string.h>
int n;
char pos[128][3];

int is_valid( char _el[])
{
  int count = 0;
  char el[3];
  strcpy(el,_el);  el[0] += 2;  el[1] += 1;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;

  strcpy(el,_el);  el[0] += 2;  el[1] -= 1;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;

  strcpy(el,_el);  el[0] -= 2;  el[1] += 1;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;

  strcpy(el,_el);  el[0] -= 2;  el[1] -= 1;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;

  strcpy(el,_el);  el[0] += 1;  el[1] -= 2;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;

  strcpy(el,_el);  el[0] -= 1;  el[1] -= 2;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;

  strcpy(el,_el);  el[0] += 1;  el[1] += 2;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;

  strcpy(el,_el);  el[0] -= 1;  el[1] += 2;
  if(el[0] >='a' && el[0] <= 'h' && el[1] >='1' && el[1] <= '8' ) count++;
  return  count;
}


void input()
{
  fstream in("knight.inp",ios::in);
  fstream out ("knight.out",ios::out);
  in >> n;
  int i;
  for ( i=0; i < n; i++)
  {
    in >> pos[i];
  }

  for ( i=0; i < n; i++)
  {
   out << is_valid(pos[i]) << "\n";
  }

 in.close();
 out.close();
}


void main()
{
 input();
}
