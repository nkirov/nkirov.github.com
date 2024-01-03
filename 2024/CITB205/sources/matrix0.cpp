#include <iostream>
using namespace std;

template<typename T, int ROWS, int COLUMNS>
  class Matrix {
  public:
      Matrix()
      {
          for (int i = 0; i < ROWS; ++i)
            for(int j = 0; j < COLUMNS; ++j)
                data[i][j] = T();
      }
      void print()
      {
          for (int i = 0; i < ROWS; ++i)
          {
            for(int j = 0; j < COLUMNS; ++j)
              cout << data[i][j] << " ";
            cout << endl;
          }
      }
  private:
     T data[ROWS][COLUMNS];
  };

int main()
{
    Matrix<int, 3, 4> a;
    Matrix<double, 3, 4> b;
    Matrix<int, 5, 7> c;
    Matrix<int, 3, 4> d;
    
  //  b = a; // Error, element types don’t match.
  //   c = a; // Error, sizes don’t match, so types differ.
    d = a; // OK. Element types and sizes match.
    
    d.print();
    
    return 0;
}
