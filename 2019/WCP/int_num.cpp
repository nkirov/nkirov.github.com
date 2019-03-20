/*
Source: USACO 2014 US Open, Silver Division, Problem 3. Odometer
Analysis by Allen Chen

This problem can be easily done by looping from X to Y and counting the number 
of interesting numbers. As X and Y are huge, this will be too slow. One can 
speed things up by using dynamic programming.

We can try to make all 9 digits, one at a time to occupy at least half of the number. 
The DP has 4 states, dp[i][und][k][is0] : i is the current position, und is whether 
you have gone below the actual number, k is a counter to see if you have at least half
of the same digit (in my code k starts at 25), and is0 is a boolean if you still have 
leading zeros. To transition, you loop through 9 digits to add to your current location, 
let's call it 'nxt', and let's call the digit we want to occupy at least half of the 
number 'targ'. If nxt is > the digit in the actual number and und = false you skip it 
since if you haven't gone below the number, you can't add anything greater. Now we 
compare targ and nxt, if they are the same, we do k-- else k++. Finally we check if we have gone under the number.

At the end to total things up, we choose the states that have i = n, is0 = false, and k <= 25
since that means we subtracted more than we added, which means targ occupies at least half of the number.

But we also have to consider overcounting. If the number has half of one number and half 
of another number (ex. 565566), then we need to count those and subtract them off our current 
amount since we counted these twice. We can simply use the same DP function and instead add two 
targs and for one of the targs do k++ and the other k--. At the end, we only count the states with k = 25.

As the number of digits is small and there are only nine digits, this algorithm is fast enough. 

Allen Chen's code is as follows:
*/

#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
#include <memory.h>
using namespace std;

typedef pair<int, int> pii;
typedef pair<int, pii> edge;
typedef unsigned long long LL;

const int maxn = 50;
string A, B;
LL dp[maxn][2][maxn][2];
LL getdp(string s, int n, int targ1, int targ2) 
{
	memset(dp, 0, sizeof(dp));
	dp[0][false][25][true] = 1;
	for (int i = 0; i < n; i++)
	{
		for (int und = 0; und < 2; und++) 
		{
			for (int k = 0; k < maxn; k++) 
			{
				for (int is0 = 0; is0 < 2; is0++)
				{
					LL cur = dp[i][und][k][is0];
					for (int nxt = 0; nxt <= 9; nxt++)
					{
						if (targ2 != -1 && (nxt != 0 || is0 == false) && nxt != targ1 && nxt != targ2) 
							continue;

						if (und == 0 && nxt > s[i] - '0')
							continue;

						bool nis0 = is0;
						nis0 &= !nxt;
						int nk = k;

						if (!nis0)
						{
							if (targ2 != -1) 
							{
								if (nxt == targ1) 
									nk--;
								else if 
									(nxt == targ2) 
									nk++;
							}

							if (targ2 == -1) 
							{
								if (nxt == targ1) 
									nk--;
								else 
									nk++;
							}
						}

						int nj = und;
						nj |= (nxt < s[i] - '0');
						dp[i + 1][nj][nk][nis0] += cur;
					}
				}
			}
		}
	}
	
	LL ret = 0;
	if (targ2 != -1)
	{
		for (int i = 0; i < 2; i++) 
			ret += dp[n][i][25][false];
		
		return ret;
	}
	
	for (int i = 0; i < 2; i++) 
		for (int k = 0; k <= 25; k++) 
			ret += dp[n][i][k][false];
	
	return ret;
}

LL f(string s) 
{
	int n = s.size();
	LL ret = 0, val;
  
	for (int targ1 = 0; targ1 <= 9; targ1++) 
	{
		val = getdp(s, n, targ1, -1);
		ret += val;
	}

	for (int targ1 = 0; targ1 <= 9; targ1++) 
	{
		for (int targ2 = targ1 + 1; targ2 <= 9; targ2++) 
		{
			val = getdp(s, n, targ1, targ2);
			ret -= val;
		}
	}

	return ret;
}

int main()
{
	cin.sync_with_stdio(false);

	while(cin >> A >> B)
	{
		for (int i = A.size() - 1; i >= 0; i--)
		{
			int c = A[i] - '0';
			if (c > 0) 
			{
				A[i]--;
				break;
			}
			else 
				A[i] = '9';
		}

		cout << f(B) - f(A) <<endl;
	}

   return 0;
}