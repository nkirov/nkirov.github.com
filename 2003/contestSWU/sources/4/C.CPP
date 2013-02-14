
#include<iostream.h>
#include<string.h>
//using namespace std;

	char A[100][100];
	char str[100];
	//str='y';
	int R[8];

	int N, flag, k;
int main()
{
int n;
	cin>>n;
	for(int i=0;i<n;i++)
		for(int j=0;j<n;j++)
			cin>>A[i][j];
		cin.clear();
		cin.ignore();
	//cin.getline(str,100,'\n');
	//cout<<str;

while(str[0]!='0')
	{
		cin.clear();
		cin.ignore();
		 char temp;
		 while(endl){} cin.getline(temp,20);
		cin.getline(str,100,'\n');
		if(str[0]=='0')break;
	
		
		flag=0;
		k=strlen(str);

		for(i=0; i<N; i++)
		{
			for(int j=0; j<N; j++)
			{
				if (A[i][j]==str[0])
				{
					for(int z=0; z<8; z++) R[z]=1;

					if((i+1+k)>N)
					{
						R[0]=0;
						R[4]=0;
						R[6]=0;
					}
					if((i+1-k)<0)
					{
						R[1]=0;
						R[5]=0;
						R[7]=0;
					}
					if((j+1+k)>N)
					{
						R[3]=0;
						R[4]=0;
						R[7]=0;
					}
					if((j+1-k)<0)
					{
						R[2]=0;
						R[5]=0;
						R[6]=0;
					}

					for(z=0; z<k; z++)
					{
						if(R[0])
						{
							if(A[i+z][j]!=str[z]) R[0]=0;
						}
						if(R[1])
						{
							if(A[i-z][j]!=str[z]) R[1]=0;
						}
						if(R[2])
						{
							if(A[i][j-z]!=str[z]) R[2]=0;
						}
						if(R[3])
						{
							if(A[i][j+z]!=str[z]) R[3]=0;
						}
						if(R[4])
						{
							if(A[i+z][j+z]!=str[z]) R[4]=0;
						}
						if(R[5])
						{
							if(A[i-z][j-z]!=str[z]) R[5]=0;
						}
						if(R[6])
						{
							if(A[i+z][j-z]!=str[z]) R[6]=0;
						}
						if(R[7])
						{
							if(A[i-z][j+z]!=str[z]) R[7]=0;
						}
					}

					if(R[0])
					{
						cout<<i+1<<","<<j+1<<","<<i+k<<","<<j+1<<endl;
						flag=1;
					}
					if(R[1])
					{
						cout<<i+1<<","<<j+1<<","<<i+1-k<<","<<j+1<<endl;
						flag=1;
					}
					if(R[2])
					{
						cout<<i+1<<","<<j+1<<","<<i+1<<","<<j+1-k<<endl;
						flag=1;
					}
					if(R[3])
					{
						cout<<i+1<<","<<j+1<<","<<i+k<<","<<j+k<<endl;
						flag=1;
					}
					if(R[4])
					{
						cout<<i+1<<","<<j+1<<","<<i+k<<","<<j+k<<endl;
						flag=1;
					}
					if(R[5])
					{
						cout<<i+1<<","<<j+1<<","<<i+1-k<<","<<j+1-k<<endl;
						flag=1;
					}
					if(R[6])
					{
						cout<<i+1<<","<<j+1<<","<<i+k<<","<<j+1-k<<endl;
						flag=1;
					}
					if(R[7])
					{
						cout<<i+1<<","<<j+1<<","<<i+1-k<<","<<j+k<<endl;
						flag=1;
					}
				}
			}
			if(flag)break;
		}
		//for(int x=0; str[x]!='\n'; x++) cin.get(str[x]);
	}





	return 0;
}