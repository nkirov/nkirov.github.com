#include <iostream>
#include <string>
#include <cstdlib>
#include <fstream>
using namespace std;

void err()
{
    cout << "argc must be >= 3!" << endl;
    exit(1);
}

void find1(istream &inf, char* argv[], string keyword, int i)
{
    string line;
    while(getline(inf, line))
    {
        size_t found = line.find(keyword);
        if (found != string::npos)
            cout << argv[i+2] << ": " << line << endl;
    }
}

void find2(istream &inf, char* argv[], string keyword, int i)
{
    string line;
    while(getline(inf, line))
    {
        if (line.length() >= keyword.length())
            for(int j=0; j < line.length() - keyword.length() - 1; j++)
                if(keyword == line.substr(j, keyword.length()))
                    cout << argv[i+2] << ": " << line << endl;
    }
}

int main(int argc, char* argv[])
{
    if (argc < 3) err();
    string keyword(argv[1]);
    ifstream inf;
    for(int i=0; i < argc - 2; i++)
    {
        inf.open(argv[i + 2]);
        if (inf.fail())
            cout << "missing file " << argv[i + 2] << endl;
        else
        {
    //        find1(inf, argv, keyword, i);
         find2(inf, argv, keyword, i);
        }
        inf.close();
    }
   return 0;
}
