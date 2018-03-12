#include <iostream>

using namespace std;

int main() {
	string t, s;
    cin >> t >> s;
    int ans = 0;
    int n = s.length();
    for (int i = 0; i < n; i++) {
        s = s.substr(1) + s[0];
        bool ok = true;
        for (int j = 0; j < n; j++) {
            if (t[j] != '?' && s[j] != t[j]) {
                ok = false;
                break;
            }
        }
        if (ok)
            ans++;
    }
    cout << ans;
    return 0;
}    
    