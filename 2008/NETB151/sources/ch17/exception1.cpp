 #include <iostream>
 #include <stdexcept>
 #include <cmath>
 using namespace std;

 double future_value(double initial_balance, double p, int n)
{  if (p < 0 || n < 0)
   {  logic_error description("illegal future_value parameter");
      throw description;
   }
   return initial_balance * pow(1 + p / 100, n);
}

 int main()
 {  bool more = true;
    while (more)
    {  double init, interest;
       int years;
       cout << "Enter initial value, interest and years: ";
       cin >> init >> interest >> years;
    
       try 
       {  double fvalue = future_value(init, interest, years); 
          cout << "The future value is " << fvalue << endl;  
       }
       catch (logic_error& e)
       {  cout << "A logic error has occurred "
               << e.what() << "\n";
       }       
       cout << "Retry? (y/n)";
       char input;
       cin >> input;
       if (input == 'n') more = false;
    } 
    return 0;
 }

