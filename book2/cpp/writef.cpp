// writef.cpp
#include <iostream>
#include <fstream>             /* ��������� �� �������� ���� */
#include <string>
using namespace std;
int main()
{  ofstream out_data; /* ���������� �� ������� ���������� �� ������ */
   out_data.open("writef.txt");  /* �������� �� ����� writef.txt */

   string s = "Hello";
   out_data << s << endl; /* ������ �� ��� */
   int n = 5;
   double x = 5.5;
   out_data << n << " " << x << " "; /* ������ �� ������� ����� */
   char ch = 'T';
   out_data.put(ch); /* ������ �� ������ */

   out_data.close();             /* ��������� �� ����� */
   return 0;
}

