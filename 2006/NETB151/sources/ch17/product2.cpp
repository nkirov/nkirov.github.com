#include <iostream>
#include <fstream>
#include <stdexcept>
#include <vector>
using namespace std;
 
class Product {
   public:
       Product();
       bool read(istream& fs);
       void print() const; 
   private:
       string name;
       double price;
       int score;
};    

Product::Product()
{ price = 0;
  score = 0;                
}

bool Product::read(istream& fs)
{  cout << "Product: ";
   getline(fs, name);
   if (name == "") return false; // end of file
   fs >> price >> score;
   if (fs.fail())
      throw runtime_error("Error while reading product");
   string remainder;
   getline(fs, remainder);   
   return true;
}

void Product::print() const
{ cout << name << " " << price << " " << score << endl;
} 
  
void process_products(istream& fs)
{  vector<Product*> products;
   bool more = true;
   while (more)
   {  Product* p = new Product;
      try
      {  if (p->read(fs)) products.push_back(p);
         else more = false;
      }   
      catch(runtime_error& r)  // runtime_error& r)
      {  cout << "1. " << r.what() << endl;
         for (int i = 0; i < products.size(); i++)
                                delete products[i];
         throw;                       
         return;                                                                     
      }                     
    }     
   /* processing products */       
   
   cout << "Print:" << endl;
   for (int i = 0; i < products.size(); i++)
   {  products[i]->print();
      delete products[i];
   }      
}

 int main()
 {  try
    {  process_products(cin);
    }
    catch(runtime_error& r)  // runtime_error& r)
    { cout << "2. " << r.what() << endl;                
    }                        
    char ch; cin >> ch;
    return 0;
 }

