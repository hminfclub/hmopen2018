#include <iostream>
#include <vector>

using namespace std;

int main() {
	int n, m;
    cin >> n >> m;
    vector<int> a(n);
    for (int i = 0; i < n; i++) 
    	cin >> a[i];
    int c, k;
    for (int i = 0; i < m; i++) {
    	cin >> c >> k;
        a[c - 1] += k;
    }
    
    int max1 = 0, max2 = 1, max3 = 2;
    
    if (a[max1] < a[max2]) swap(max1, max2);
    if (a[max2] < a[max3]) swap(max2, max3);
    if (a[max1] < a[max2]) swap(max1, max2);
    
    for (int i = 3; i < n; i++) {
    	if (a[i] > a[max1]) {
        	max3 = max2;
            max2 = max1;
            max1 = i;
        } else if (a[i] > a[max2]) {
        	max3 = max2;
            max2 = i;
        } else if (a[i] > a[max3]) {
        	max3 = i;
        }
    }
    cout << max1 + 1 << " " << max2 + 1 << " " << max3 + 1 << endl;
    return 0;
}
