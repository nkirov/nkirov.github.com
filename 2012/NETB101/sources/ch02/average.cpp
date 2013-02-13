#include <iostream>
using namespace std;

int main()
{
   cout << "Please enter your last three test scores: "; 
   int s1;
   int s2;
   int s3;
   cin >> s1 >> s2 >> s3;
   double average = (s1 + s2 + s3) / 3; 
   cout << "Your average score is " << average << endl;

   return 0;   
}
