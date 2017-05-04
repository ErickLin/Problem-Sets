#include <cstdio>
#include <iostream>
#include <map>
#include <string>
using namespace std;

string convert_to_binary(double x) {
    string s = ".";
    if (x == 0) {
        s += "0";
    }
    map<string, int> cache;
    for (int i = 0; x > 0; i++) {
        string x_string = to_string(x);
        if (cache.find(x_string) != cache.end()) {
            return s + " with repetition starting at place " + to_string(cache[x_string] + 1);
        }
        cache[x_string] = i;
        if (x >= 0.5) {
            s += "1";
            x -= 0.5;
        } else {
            s += "0";
        }
        x *= 2;
    }
    return s;
}

int main() {
    cout << .25 << " = " << convert_to_binary(.25) << '\n';
    cout << .125 << " = " << convert_to_binary(.125) << '\n';
    cout << .3 << " = " << convert_to_binary(.3) << '\n';
    cout << .95 << " = " << convert_to_binary(.95) << '\n';
    cout << .45 << " = " << convert_to_binary(.45) << '\n';
    cout << "Enter your decimal value (in the range [0, 1)) here: ";
    double x;
    cin >> x;
    cout << x << " = " << convert_to_binary(x) << '\n';
    return 0;
    return 0;
}
