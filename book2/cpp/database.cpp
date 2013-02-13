// database.cpp
#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
using namespace std;

#include "ccc_empl.cpp"

const int NEWLINE_LENGTH = 2; /* or 1 on Unix */
const int RECORD_SIZE = 30 + 10 + NEWLINE_LENGTH;

double string_to_double(string s)
{ istringstream instr(s);
  double x;
  instr >> x;
  return x;
}

void raise_salary(Employee& e, double percent)
{ double new_salary = e.get_salary() * (1 + percent/100);
  e.set_salary(new_salary);
}

void read_employee(Employee& e, fstream& fs)
{ string line;
  getline(fs, line);
  if (fs.fail()) return;
  string name = line.substr(0, 30);
  double salary = string_to_double(line.substr(30, 10));
  e = Employee(name, salary);
}

void write_employee(Employee e, fstream& fs)
{ fs << e.get_name()
     << setw(10 + (30 - e.get_name().length()))
     << fixed << setprecision(2)
     << e.get_salary() << "\n";
}

int main()
{ cout << "Please enter the data file name: ";
  string filename;
  cin >> filename;
  fstream fs;
  fs.open(filename.c_str());
  fs.seekg(0, ios::end); /* go to end of file */
  int nrecord = fs.tellg() / RECORD_SIZE;

  cout << "Please enter the record to update: (0 - "
       << nrecord - 1 << ") ";
  int pos;
  cin >> pos;

  const double SALARY_CHANGE = 5.0;
  Employee e;
  fs.seekg(pos * RECORD_SIZE, ios::beg);
  read_employee(e, fs);
  raise_salary(e, SALARY_CHANGE);
  fs.seekp(pos * RECORD_SIZE, ios::beg);
  write_employee(e, fs);

  fs.close();
  return 0;
}

