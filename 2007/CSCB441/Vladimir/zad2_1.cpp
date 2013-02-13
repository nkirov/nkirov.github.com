#include <iostream>
using namespace std;

// input function
void input(int a[], int& aux)
{
     char ch;
     while (cin >> ch)
     {  a[aux] = ch - 48;
        aux++;
     }
}

// finds the minimal element and returns its position in the array 
int min(int a[], int from, int to, int above)
{
    int minimal = a[from];
    int min_pos = from;
    for(int i=from; i<to; i++)
    {   if ((a[i] < minimal) && (a[i] > above))
        {    minimal = a[i];
             min_pos = i;
        }
    }
    return min_pos;
}

// lim - upper boundary of the array
// dig - number of digits of the number, that is about to be dispalyed
// first - true if this is the first digit to be dispalyed
void function(int a[], int lim, int dig, int from, int to, bool first)
{ 
    if (dig == 0)                                           // if there are no more digits to be displayed -> return;
         return;
    else     
    {    int i;                                             //integer that holds the minimum element's position;
         if (first == true)                                 //if this is the first digit to be displayed, find the minimal
            i = min(a, from, to, 0);                        //element > 0; (0 is not considered)
         else                                               //else, find the minimal element
            i = min(a, from, to, -1);                       //thats is > - 1 (0 is considered)
         if (dig <= lim - i)                                //if the number of digits that are needed to be displayed
         {  cout << a[i];                                   // <= the digits till the end of the input string, display it;
            function(a, lim, dig - 1, i + 1, lim, false);   // do the same for the right part of the string
         }
         else                                               //if dig > the digits till the end of the input string
            function(a, lim, dig, from, i , true);          // do the same for the left part of the string 
    }
} 

int main()
{
    int b=0;                                                // represents the boundary of the array a[30];
    int a[30];                                              // array that holds the input
    input(a, b);          
    for (int i=1; i <= b; i++)
        { function(a, b, i, 0, b, true);
          cout << endl;
        }
    system("PAUSE");
    return 0;
}

         
