// readdata.cpp
#include "ccc_win.cpp"


void read_data(vector<double>& v, ifstream& in)
{ double s;
  while (in >> s) v.push_back(s);
}
double maximum(vector<double> v)
{ if (v.size() == 0) return 0;
  double highest = v[0];
  int i;
  for (i = 1; i < v.size(); i++)
     if (v[i] > highest) highest = v[i];
  return highest;
}
void plot_data(vector<double> v)
{ double highest = maximum(v);
  cwin.coord(0, 0, highest, v.size());
  int i;
  for (i = 0; i < v.size(); i++)
  { Point left(0, i);
    Point right(v[i], i);
    Line bar(left, right);
    Message label(left, v[i]);
    cwin << bar << label;
  }
}

int main()
{ string filename
     = cwin.get_string("Please enter the data file name: ");
  ifstream infile;
  infile.open(filename.c_str());
  vector<double> data;
  read_data(data, infile);
  infile.close();
  plot_data(data);
  return 0;
}