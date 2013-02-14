#include <stdio.h>
#include <string.h>


char m[110][110];
char word[110];
int len;
int n;

bool Found(int sr, int sc, int rdiff, int cdiff, int& dr, int& dc){
	int r, c, w;
	for(r = sr, c = sc, w = 0;
		w < len && r < n && r >= 0 && c < n && c >= 0 &&
			m[r][c] == word[w];
		r += rdiff, c += cdiff, w++)
	{
		//nothing
	}
	if(w == len){
		r -= rdiff;
		c -= cdiff;
		dr = r;
		dc = c;
		return true;
	}
	return false;
}

void main(){
	scanf("%d", &n);
	int r;
	for(r = 0; r < n; r++){
		scanf("%s", m[r]);
	}
	while(true){
		//cin >> word;
		scanf("%s", word);
		len = strlen(word);
		if(len == 1 && word[0] == '0'){
			break;
		}
		bool found = false;
		int sr, sc, dr, dc;
		for(sr = 0; sr < n; sr++){
			for(sc = 0; sc < n; sc++){
				if(Found(sr, sc, 1, 0, dr, dc)){
					found = true;
					goto out;
				}
				if(Found(sr, sc, -1, 0, dr, dc)){
					found = true;
					goto out;
				}
				if(Found(sr, sc, 0, 1, dr, dc)){
					found = true;
					goto out;
				}
				if(Found(sr, sc, 0, -1, dr, dc)){
					found = true;
					goto out;
				}
				if(Found(sr, sc, -1, -1, dr, dc)){
					found = true;
					goto out;
				}
				if(Found(sr, sc, -1, 1, dr, dc)){
					found = true;
					goto out;
				}
				if(Found(sr, sc, 1, -1, dr, dc)){
					found = true;
					goto out;
				}
				if(Found(sr, sc, 1, 1, dr, dc)){
					found = true;
					goto out;
				}
			}
		}
out:
		if(found){
			printf("%d,%d %d,%d\n", sr + 1, sc + 1, dr + 1, dc + 1);
		}
		else{
			printf("Not found\n");
		}
	}

}