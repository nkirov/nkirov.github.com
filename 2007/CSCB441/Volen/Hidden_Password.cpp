#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;                       

int main()
{
    int T, L;
    string S;
    vector<int> answers;
    
    cin >> T;
    
    for(int i = 0; i < T; i++)
    {
        vector<string> shifts;
        
        cin >> L;
        getline(cin, S);
        
        S = S.substr(1, L) + S.substr(1, L);
        
        for(int j = 0; j < L; j++)
                shifts.push_back( S.substr(j, L) );
                
        sort(shifts.begin(), shifts.end());
                
        for(int k = 0; k < shifts.size(); k++)
                if(shifts[0] == S.substr(k, L))
                {
                         answers.push_back( k ); 
                         break;
                } 
    }

    for(int i = 0; i < answers.size(); i++)
            cout << answers[i] << endl;
      
    return( 0 );
}
