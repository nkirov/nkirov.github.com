#include <iostream>
#include <string>

using namespace std;

int n;
bool dead[30];
string names[30];
int choices[1100][30]; // zero based
int ch;
int it[1100];

void main(){
	cin >> n;
	getline(cin, names[0]);		
	int i;
	for(i = 1; i <= n; i++){
		getline(cin, names[i]);		
	}
	int r;
	for(r = 0; ; r++){
		for(int i = 0; i < n; i++){
			if((cin >> choices[r][i])){
			}
			else {
				goto out;
			}

		}
	}

out:
	ch = r;
	int res;
	int count[30];
	while(true){
		memset(count, 0, sizeof(count));
		for(int c = 0; c < ch; c++){
			for(; dead[choices[c][it[c]]]; it[c]++);
			count[choices[c][it[c]]]++;
		}
		int best = choices[0][it[0]];
		int worst = choices[0][it[0]];
		for(int i = 1; i <= n; i++){
			if(dead[i]){
				continue;
			}
			if(count[i] * 2 > ch){
				res = i;
				goto final;
			}
			if(count[i] < count[worst]){
				worst = i;
			}
			if(count[i] > count[best]){
				best = i;
			}
		}
		if(count[worst] == count[best]){
			res = best;
			goto final;
		}
		for(i = 1; i <= n; i++){
			if(count[worst] == count[i]){
				dead[i] = true;
				count[i] = 0;
			}
		}
	}
final:
	for(i = 1; i <= n; i++){
		if(!dead[i] && count[i] == count[res]){
			cout << names[i] << "\n";
		}
	}
		
}