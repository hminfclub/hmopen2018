#include <iostream>

using namespace std;

int main() {
	int n;
    cin >> n;
    if (n >= 404) {
    	cout << "MSU";
    } else if (n >= 322) {
    	cout << "MPI";
    } else if (n >= 239) {
    	cout << "MIT";
    } else {
    	cout << ":(";
    }
    return 0;
}
