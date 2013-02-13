#include <iostream>
#include <string>
#include <vector>
using namespace std;

int m;
string last_name;

class Inhabitant {
   public:
     Inhabitant(){}

     void oposite()
     { direction = !direction; }
     bool is_active() const
     { return active; }
     void next();
     void check(Inhabitant);
     void read();
     void print() const;         
     static int num;           
   private:
      string name;
      bool direction; // true - positive, false - negative
      int position;          
      bool active; 
};                     

int Inhabitant::num = 0;

void Inhabitant::next()
{  if (!active) return;
   if (direction) position++;
   else position--;
}

void Inhabitant::check(Inhabitant inh)
{  if (!active) return; 
   if (position == 0 || position == m) 
   { num--; 
     active = false;
     last_name = name;
   }
   if (name != inh.name && position == inh.position) oposite();      
}    

void Inhabitant::read()
{  char d;
   cin >> d;
   direction = (d == 'p');
   cin >> position;
   cin >> name;
   active = true;
   num++;         
//   cout << num << endl; 
}  

void Inhabitant::print() const
{ cout << direction << " " << position << " " << name << endl;
}     

int main()
{ int n;
  while (cin >> n && n > 0) 
  {  cin >> m;
     vector<Inhabitant> population(n);
     for (int i=0; i<n; i++) population[i].read();
     int time = 0;
     while (Inhabitant::num > 0)
     {  for (int i=0; i<n; i++) population[i].next();
        for (int i=0; i<n; i++) 
          for (int j=0; j<n; j++)
             population[i].check(population[j]);    
/*             
        for (int i=0; i<n; i++) 
          if (population[i].is_active()) population[i].print();    
        cout << Inhabitant::num << endl;
*/        
        time++;      
     }  
     cout << time << " " << last_name << endl;
  }  
  return 0;   
}    

