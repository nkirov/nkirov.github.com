template <typename T>
class ABC {
public:
   ABC(int y=0) {z = y;}// 
   template <typename Q>   
   class B {
       public: 
          int ss;
          B() { ss=0; }        
      };
private:
    int z;            
};

template <typename T>
class C : public ABC<T>{
public:
    ABC<T>::B<T> bb;
};                       
