#include <iostream>
#include <fstream>             /* включване на заглавен файл */
#include <string>
using namespace std;

int main()
{  ifstream in_data; /* дефиниране на файлова променлива за четене */
    in_data.open("readf.txt");  /* отваряне на файла readf.txt */
    
    string s1, s2;
    getline(in_data, s1);       /* четене на ред */
    in_data >> s2;              /* четене на дума */
    
    int n;
    double x;
    in_data >> n >> x;          /* четене на числови данни */
    
    char ch;
    while (!in_data.eof())
        in_data.get(ch);         /* четене на символ */
    
    in_data.close();            /* затваряне на файла */
    cout << s1 << endl << s2 << " "
    << n << " " << x << " " << ch << endl;
    return 0;
}