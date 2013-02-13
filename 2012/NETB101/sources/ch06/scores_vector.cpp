#include <iostream>
#include <vector>

using namespace std;

/**
   Reads a sequence of floating-point numbers.
   @return a vector containing the numbers
*/
vector<double> read_inputs()
{
   vector<double> result;
   cout << "Please enter values, Q to quit:" << endl;
   bool more = true;
   while (more)
   {  
      double input;
      cin >> input;
      if (cin.fail())
      {
         more = false;
      }
      else 
      {
         result.push_back(input);
      }
   }
   return result;
}

/**
   Gets the minimum value from a vector.
   @param values a vector of size >= 1
   @return the smallest element of values
*/
double minimum(vector<double> values)
{
   double smallest = values[0];
   for (int i = 1; i < values.size(); i++)
   {
      if (values[i] < smallest)
      {
         smallest = values[i];
      }
   }
   return smallest;
}

/**
   Returns the index of the first element that matches a given element.
   @param values a vector
   @param element the element to match
   @return the smallest i such that values[i] == element,
   or -1 if there is no such element
*/
int find_first(vector<double> values, double element)
{
   int pos = 0;
   while (pos < values.size())
   {
      if (values[pos] == element)
      {
         return pos;
      }
      else
      {
         pos++;
      }
   }
   return -1;
}

/**
   Removes an element from a vector. The order of the elements is not
   preserved.
   @param values a vector
   @param pos the index of the element to be removed (must be valid)
*/
void remove(vector<double>& values, int pos)
{
   int last_pos = values.size() - 1;
   values[pos] = values[last_pos];
   values.pop_back();
}

/**
   Removes the minimum from a vector.
   @param values a vector of size >= 1
*/
void remove_min(vector<double>& values)
{
   double min = minimum(values);
   int pos = find_first(values, min);
   remove(values, pos);
}

/**
   Computes the sum of the values in a vector.
   @param values a vector
   @return the sum of the values in values
*/
double sum(vector<double> values)
{
   double total = 0;
   for (int i = 0; i < values.size(); i++)
   {
      total = total + values[i];
   }
   return total;
}

int main()
{
   vector<double> scores = read_inputs();
   if (scores.size() == 0)
   {
      cout << "At least one score is required." << endl;
   }
   else
   {
      remove_min(scores);
      double total = sum(scores);
      cout << "Final score: " << total << endl;
   }
   return 0;
}
