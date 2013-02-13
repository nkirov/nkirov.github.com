#include <iostream>
#include <string>

int a[10];
std::string s;

void print(int n)
{  int b[10];
   for (int i=0; i<10; i++) b[i] = a[i];
   int num = 1;
   int i = 1; 
   while(b[i] == 0) i++;
   std::cout << static_cast<char>(i+48);
   b[i]--;
   num++;
   if (num > n) return;
   for (i=0; i<10; i++)
     for (int j=0; j < b[i]; j++)
     {
       std::cout << static_cast<char>(i+48);
       num++;
       if (num > n) return;
     } 
}

int main()
{  while (std::cin >> s)
   {  std::cout << s << std::endl;
      for (int i=0; i<10; i++) a[i] = 0;
      for (int i = 0; i < s.length(); i++)
         a[s[i]-48]++;
      for (int i = 0; i < s.length(); i++)
       {  print(i+1);
          std::cout << std::endl;     
       }
    }  
    return 0;       
}    
