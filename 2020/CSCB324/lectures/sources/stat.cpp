#include <fstream>
#include <set>
#include <algorithm>
#define llong unsigned long
using namespace std;

llong l1, l2;

bool pred(llong l)
{ return (l1<=l) && (l<=l2); }

int main()
{
 typedef set< llong, less<llong> > l_set;
 l_set bigset;
 pair< l_set::const_iterator, bool > p;
 int oper, num;
 llong lnum;
 ifstream finp("stat.inp");
 ofstream fout("stat.out");
 finp >> oper;
 while (oper < 4)
 {
  if (oper==1)
  {
   finp >> lnum;
   p=bigset.insert(lnum);
   fout << (p.second ? 1 : 0) << endl;
//   cout << (p.second ? 1 : 0) << endl;
  }
  else if (oper==2)
  {
   finp >> lnum;
   num=bigset.erase(lnum);
   fout << (p.second ? 1 : 0) << endl;
//   cout << (p.second ? 1 : 0) << endl;
  }
  else if(oper==3)
  {
   finp >> l1 >> l2;
   llong result=count_if(bigset.begin(), bigset.end(), pred);
   fout << result << endl;
//   cout << result << endl;
  }
  finp >> oper;
 }
 return 0;
}
