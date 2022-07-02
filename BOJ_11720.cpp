#include <iostream>
#include <string>
using namespace std;

int main(void)
{
    int time;

    cin >> time;
    string num;

    cin >> num;

    int sum = 0;
    for(int i = 0; i < time ; i ++)
    {
        sum += num[i]-'0';
    }

    cout << sum;
    
    return 0;
}
