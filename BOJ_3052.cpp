#include <iostream>
#include <string>

using namespace std;

int main (void)
{
    int arr[11];
    int check[43];
    int a, dup, total;
    dup = 0;

    for(int i = 0; i < 43; i++)
    {
        check[i] = 0;
    }

    for(int i = 0; i < 10; i++)
    {
        cin >> arr[i];
        a = arr[i] % 42;
        ++check[a];
        if(check[a] != 1)
            ++dup;
    }

    cout << 10 - dup;
}