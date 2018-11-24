#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

vector<pair<double, double>> arr(1010);
int groups[1010];
bool groupValues[1010];
int N, i, j, cnt;
double D;

void fun(int ind, int gr) {
	if (!groups[ind]) groups[ind] = gr; // ako nqma grypa -> napravi (samo pri vikane na fun() ot main() shte e true if-a)
	for (int i = 0; i < N; ++i) {
		if (groups[i]) continue;// ako i-tiq element ima grypa, togava otidi na sledvashtiq
		if ((sqrt(pow(arr[ind].first - arr[i].first, 2) + pow(arr[ind].second - arr[i].second, 2))) <= D) { // ako razstoqnieto m/y 2-te tochki e <= D, togava i-tiq element go sloji v grypata na ind-tiq
			groups[i] = gr; // markiram i-tata tochka ot grypa gr, ot koqto grypa e i ind-tiq element
			fun(i, gr); // proveri razstoqnieto mejdy i-tiq i vsichki tochki
		}
	} // rekursiqta vrushta, kogato nqma razstoqnie po-malko ot D mejdy tochka s indeks ind i i-ta tochka(i..N-1) 
}

int main() {
	while (cin >> N >> D) {
		cnt = 0;
		if (N < 2) return 0;
		for (i = 0; i < N; ++i) {
			cin >> arr[i].first;
			cin >> arr[i].second;
		}
		for (i = 0; i < N; ++i)
			if (!groups[i]) fun(i, i + 1); // ako i-tata tochka nqma grypa, t.e. ako stoinostta i e 0

		// for (i = 0; i < N; ++i) cout << groups[i] << " ";cout << endl;

		for (i = 0; i < N; ++i) groupValues[groups[i]] = 1;
		for (i = 1; i < N; ++i) cnt += groupValues[i];
		cnt += groupValues[N]; // za da ne pravi i < N + 1. A N+1 moje da bude, zashtoto maksimalnata grypa moje da bude sus stoinost N.
		cout << cnt << "\n";

		cnt = 0; // nulirame
		for (i = 0; i < N; ++i) groupValues[i] = 0;// nulirame
		groupValues[N] = 0;
		for (i = 0; i < N; ++i) groups[i] = 0; // nulirame
	}
}