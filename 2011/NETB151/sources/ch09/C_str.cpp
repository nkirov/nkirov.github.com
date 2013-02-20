#include <iostream>
using namespace std;

int main()
{
//   int atoi(const char s[]);

    char greeting[] = "Hello";
    cout << greeting << "   " << strlen(greeting) << endl;
    
    string year = "1999";
    int y = atoi(year.c_str());
    cout << y + 1 << endl;
    
    return 0;
}
