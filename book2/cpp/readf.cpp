// readf.cpp
#include <iostream>
#include <fstream>             /* ��������� �� �������� ���� */
#include <string>
using namespace std;
int main()
{  ifstream in_data; /* ���������� �� ������� ���������� �� ������ */
   in_data.open("readf.txt");  /* �������� �� ����� input.txt */

   string s1, s2;
   getline(in_data, s1);       /* ������ �� ��� */
   in_data >> s2;              /* ������ �� ���� */
   
   int n;
   double x;
   in_data >> n >> x;          /* ������ �� ������� ����� */
   
   char ch;
   while (!in_data.eof()) 
   in_data.get(ch);            /* ������ �� ������ */

   in_data.close();            /* ��������� �� ����� */
   cout << s1 << endl << s2 << " " 
        << n << " " << x << " " << ch << endl;
   return 0;
}
