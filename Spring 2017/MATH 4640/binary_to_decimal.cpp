#include <cmath>
#include <cstdio>
#include <iostream>
using namespace std;

double convert_to_decimal(string s, int b) {
    double num = 0;
    double frac = 1;
    bool past_point = false;
    for (int i = 0; i < s.length(); i++) {
        if (s.at(i) == '.') {
            past_point = true;
        } else {
            if (!past_point) {
                num *= b;
            }
            int dig = s.at(i);
            if (dig >= '0' && dig <= '9') {
                dig -= '0';
            } 
            if (dig >= 'A' && dig <= 'Z') {
                dig = dig - 'A' + 10;
            }
            if (past_point) {
                frac /= b;
            }
            num += dig * frac;
        }
    }
    return num;
}

int main() {
    cout << "Examples: " << '\n';
    cout << "101111 = " << convert_to_decimal("101111", 2) << '\n';
    cout << "1001010 = " << convert_to_decimal("1001010", 2) << '\n';
    cout << "10000110 = " << convert_to_decimal("10000110", 2) << '\n';
    cout << "11100 = " << convert_to_decimal("11100", 2) << '\n';
    cout << "1101 = " << convert_to_decimal("1101", 2) << '\n';
    cout << "1101.1 = " << convert_to_decimal("1101.1", 2) << '\n';
    cout << "Enter your binary value here: ";
    string s;
    cin >> s;
    cout << s << " = " << convert_to_decimal(s, 2) << '\n';
    return 0;
}
