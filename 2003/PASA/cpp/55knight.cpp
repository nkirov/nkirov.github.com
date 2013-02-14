/*
Vladislav Slavov Saykov,NBU,3 course, FN 15941
zadacha 2a: 11.10.2002
Dev C++ 4

*/



#include<iostream>

#include<fstream>

using namespace std;

void main()

{	

ifstream fin("knight.inp");

ofstream fout("knight.out");

char a;int i,m;

fin>>i;

for (int n=1;n<=i;n++)

{

	fin>>a;fin>>m;

if ((a>'b'&&a<'g') &&(m>2&&m<7)) {fout<<8<<"\n";continue;}//big centre

	else if ((a=='a'||a=='h') &&(m==1||m==8)) {fout<<2<<"\n";continue;}//a1,h1,a8,h8	

		else if ((a>'b'&&a<'g') &&(m==1||m==8) ||(m>2&&m<7) &&(a=='a'||a=='h'))

				{fout<<4<<"\n";continue;}//a3-a6,h3-h6,c-f1,c-f8	

				else if ((a=='b'||a=='g') &&(m==2||m==7)) {fout<<4<<"\n";continue;}//b2,b7,g2,g7

					else if ((a>'b'&&a<'g') &&(m==2||m==7) ||(m>2&&m<7) &&(a=='b'||a=='g'))

				{fout<<6<<"\n";continue;}//b3-b6,g3-g6,c-f2,c-f7

							else {fout<<3<<"\n";continue;};//a2,a7,b1,b8,g1,g8,h2,h7

};

fin.close();

fout.close();

}
