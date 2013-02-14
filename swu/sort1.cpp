#include<iostream.h>
const int n=8;
struct Item {
	 int key;
	 float f;
};

void StraightInsertion(Item a[n+1]);
void StraightSelection(Item a[n+1]);
void BubbleSort(Item a[n+1]);
void print(Item a[n+1]);

void main()
{
 Item a[n+1]={0,0,44,0,55,0,12,0,42,0,94,0,18,0,6,0,67,0};
// StraightInsertion(a);
// StraightSelection(a);
 BubbleSort(a);
 print(a);
}
void StraightInsertion(Item a[n+1])
{
 int i, j;
 Item x;
 for (i=2; i<=n; i++)
 {
  print(a);
  x=a[i];  a[0]=x;   j=i-1;
  while (x.key < a[j].key)
  {
   a[j+1]=a[j]; j--;
  }
  a[j+1]=x;
 }
}
void StraightSelection(Item a[n+1])
{
 int i, j, k;
 Item x;
 for (i=1; i<=n-1; i++)
 {
  print(a);
  k=i; x=a[i];
  for (j=i+1; j<=n; j++)
  if (a[j].key<x.key)
  {
   k=j; x=a[j];
  }
  a[k]=a[i]; a[i]=x;
 }
}
void BubbleSort(Item a[n+1])
{
 int i, j;
 Item x;
 for (i=2; i<=n; i++)
 {
  print(a);
  for (j=n; j>=i; j--)
  if (a[j-1].key > a[j].key)
  {
   x=a[j-1]; a[j-1]=a[j]; a[j]=x;
  }
 }
}
void print(Item a[n+1])
{
 int i;
 for (i=1; i<=n; i++) cout << a[i].key << "  ";
 cout << "\n";
}