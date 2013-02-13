// ceasar.cpp
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
using namespace std;

void usage(string program_name)
{ cout << "Usage: " << program_name
       << " [-d] [-kn] infile outfile\n";
  exit(1);
}

void open_file_error(string filename)
{ cout << "Error opening file " << filename << "\n";
  exit(1);
}

int remainder(int a, int n)
{ if (a >= 0) return a % n;
  else        return n - 1 - (-a - 1) % n;
}

char encrypt(char ch, int k)
{ const int NLETTER = 26;
  if ('A' <= ch && ch <= 'Z')
     return static_cast<char>('A' + remainder(ch-'A'+k, NLETTER));
  if ('a' <= ch && ch <= 'z')
     return static_cast<char>('a' + remainder(ch-'a'+k, NLETTER));
  return ch;
}

void encrypt_file(ifstream& in, ofstream& out, int k)
{ char ch;
  while (in.get(ch)) out.put(encrypt(ch, k));
}

int string_to_int(string s)
{ istringstream instr(s);
  int n;
  instr >> n;
  return n;
}

int main(int argc, char* argv[])
{ bool decrypt = false;
  int key = 3;
  int nfile = 0; /* the number of files specified */
  ifstream infile;
  ofstream outfile;

  if (argc < 3 or argc > 5) usage(string(argv[0]));

  int i;
  for (i = 1; i < argc; i++)
  { string arg = string(argv[i]);
    if (arg.length() >= 2 and arg[0] == '-')
/* it is a command line option */
    { char option = arg[1];
      if (option == 'd') decrypt = true;
      else if (option == 'k')
        key = string_to_int(arg.substr(2, arg.length() - 2));
    }
    else
    { nfile++;
      if (nfile == 1)
      { infile.open(arg.c_str());
        if (infile.fail()) open_file_error(arg);
      }
      else if (nfile == 2)
      { outfile.open(arg.c_str());
        if (outfile.fail()) open_file_error(arg);
      }
    }
   }
   if(nfile != 2) usage(string(argv[0]));
   if (decrypt) key = -key;
   encrypt_file(infile, outfile, key);
   infile.close();
   outfile.close();
   return 0;
}
