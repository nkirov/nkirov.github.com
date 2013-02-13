/**************************
Problem G. Operations on sets.

Given the set {10,11,...,99}, we denote a subset of its elements by a capital
letter from the alphabet A, B, ..., Z. The content of a subset we denote by
a comma separated list of elements, written between brackets "{" and "}".
The union and intersection of the sets A and B are represented by A+B and
respectively by A*B. The complement of a subset A is denoted by -A. Using
these 3 operations "+", "*", "-", brackets "(" and ")" and subset's names,
we can build expressions. Two operators are introduced:
LET <subset's name>=<list of elements>
defines a subset's name for a subset containig elements written on the right
hand side and
FIND <expression>
evaluates the subset defined by <expression> using the current contents of
subset's names appeared in it and outputs the number of its elements.

Program file - sets.exe

Input file - sets.inp

This file contains one operator in each row and ends by special statement STOP.

Output file - sets.out

The file must contain the computed numbers of elements, each on a separate row,
according to the every FIND operator in the input data.

Sample Input 
LET A={18,28,38,48,58,68,78,88,98}
LET B={91,92,93,94,95,96,97,98,99}
FIND (-A)*B
LET C={11,22,33,44,55,66,77,88,99}
FIND (A+B)+C
STOP

Sample Output
8
24

**************************/
#include <fstream>

int main()
{
 return 0;
}
