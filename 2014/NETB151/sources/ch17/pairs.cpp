 #include <iostream>
 #include <string>
 using namespace std;

 template<typename T>
 class Pair
 {
 public:
    Pair(T a, T b);
    T get_first() const;
    T get_second() const;
    void print() const;
 private:
    T first;
    T second;
 };
 
 template<typename T>
 Pair<T>::Pair(T a, T b)
 {  first = a;
    second = b;
 }
 
 template<typename T>
 T Pair<T>::get_first() const
 {  return first;             
 }
 
 template<typename T>
 T Pair<T>::get_second() const
 {  return second;             
 }
 
 template<typename T>
 void Pair<T>::print() const
 { cout << "Pair: (" << first << ","
        << second << ")" << endl;
 }

 int main()
 {  Pair<int> integers(10,22);
    integers.print();
    Pair<double> doubles(1.5, 2.25);
    doubles.print();
    Pair<string> strings("One", "Two");
    strings.print(); 
 
    return 0;
 }

