#include <iostream>
using namespace std;

int main()
{
    int i, j;
    double d;

    i = 10;
    j = 10;
    d = 10.01;

    cout << "Here are some values: ";
    cout << i << ' ' << j << ' '<< d<< '\n';

    cout << "Enter a value: ";
    cin >> i;
    cout << "Here is your number: "<< i<< '\n';

    return 0;
}
