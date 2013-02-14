#include<stdio.h>
#include<string.h>

int n;
char mat[200][200];
char word[200];
char tmp[200];

main()
{
	FILE * dat = stdin;
	fscanf(dat,"%d\n",&n);
	for (int i=0; i<n; i++) {
		fscanf(dat,"%s\n",tmp);
		for (int k=0;k<strlen(tmp);k++)
			mat[i][k] = tmp[k];
	}
	int found;

	while (fgets(word,200,dat) && word[0] != '\n' && word[0] != '0')
	{


		// eliminate the stupid \n
		word[strlen(word)-1]=0;

		int found=0;
		//iterate through the matrix, brute-force
		for (int i=0; i<n; i++)
			for (int k=0; k<n; k++)
			if (word[0] == mat[i][k] && !found)
			{
				//search in 8 directions
				// up
				int j=0;
				if (i+1 >= strlen(word))
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( ((i-j)<0) || word[j]!=mat[i-j][k]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n",i+1,k+1,i+1-j+1,k+1); found=1; break; }

				// down
				if (i+ strlen(word) <= n)
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( (i+j>=n) || word[j] != mat[i+j][k]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n",i+1,k+1,i+j,k+1); found=1; break; }

				// right
				if (k+ strlen(word) <= n)
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( (k+j>=n) || word[j] != mat[i][k+j]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n" ,i+1,k+1,i+1,k+j); found=1;break; }

				// left
				if (k+1 >= strlen(word))
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( ((k-j)<0) || word[j] != mat[i][k-j]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n",i+1,k+1,i+1,k+1-j+1); found=1; break; }


				// up left
				if (i+1 >= strlen(word)  && k+1 >= strlen(word))
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( ((i-j)<0) || ((k-j)<0) || word[j] != mat[i-j][k-j]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n",i+1,k+1,i+1-j+1,k+1-j+1); found=1;break; }

				// up right
				if (i+1 >= strlen(word)  && k+strlen(word) <=n)
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( ((i-j)<0) ||  (k+j>=n) || word[j] != mat[i-j][k+j]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n",i+1,k+1,i+1-j+1,k+j); found=1; break; }


				// down left
				if (i+ strlen(word) <= n && k+1 >= strlen(word))
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( ((k-j)<0) ||  (i+j>=n) || word[j] != mat[i+j][k-j]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n",i+1,k+1,i+j,k+1-j+1); found=1;break; }


				// down right
				if (i+ strlen(word) <= n && k+strlen(word) <=n)
				for (j=1; j<strlen(word); j++) // we already checked the first one
				{
					if ( (i+j>=n) ||  (k+j>=n) || word[j] != mat[i+j][k+j]) break;
				}
				if (j==strlen(word)) { printf("%d,%d %d,%d\n",i+1,k+1,i+j,k+j); found=1;break; }
				if (found) break;
			}

			if (!found) printf("Not found\n");
	}

}