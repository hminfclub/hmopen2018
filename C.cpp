#include <iostream>

using namespace std;

int main() {
	int n, cnt = 0;
    long long k;
    cin >> n >> k;
    for (int i = 1; i <= n; i++)
    	if (k % i > 0)
        	cnt++;
    cout << cnt << endl;
    return 0;
}
