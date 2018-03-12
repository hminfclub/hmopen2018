#include <iostream>
#include <vector>

using namespace std;

int main() {
	int n, left = 0, ans = 0;
    long long s, sum = 0;
    cin >> n >> s;
    vector<long long> a(n);
    for (int i = 0; i < n; i++) {
    	cin >> a[i];
        sum += a[i];
        while (sum > s) {
        	sum -= a[left];
            left++;
        }
        if (sum == s)
        	ans++;
    }
    cout << ans;
    return 0;
}
