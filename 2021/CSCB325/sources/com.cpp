// CSCB325 2020
// complex numbers
// C++11
// >clang++ -std=c++11 -stdlib=libc++ com.cpp
//
#include<iostream>
#include <complex>
using namespace std;

// typedef long long C;
typedef double C;
typedef complex<C> P;
#define X real()
#define Y imag()

int main()
{
    P p = {4,2};
    cout << p.X << " " << p.Y << "\n"; // 4 2
// аритметични операции
    P v = {3,1};
    P u = {2,2};
    P s = v+u;
    cout << s.X << " " << s.Y << "\n"; // 5 3
// разстояние между две точки
    P a = {4,2};
    P b = {3,-1};
    cout << abs(b-a) << "\n"; // 3.16228
// ъгъл (в радиани) между вектора и абцисната ос
    P w = {4,2};
    cout << arg(w) << "\n"; // 0.463648
// завъртане на вектора на ъгъл 1/2 радиани обратно на чосовата стрелка
    w *= polar(1.0,0.5);
    cout << arg(w) << "\n"; // 0.963648
// векторно произведение
    a = {4,2};
    b = {1,2};
    cout << (conj(a)*b).Y << endl; // 4*2 - 2*1
    return 0;
}
