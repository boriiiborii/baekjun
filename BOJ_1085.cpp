#include <iostream>
using namespace std;

int pos(int a)
{
    if (a < 0)
        return -a;
    else
        return a;
}

int main(void)
{
    int x,y,w,h;
    cin >> x;
    cin >> y;
    cin >> w;
    cin >> h;

    int arr[4];

    arr[0] = pos(x-w);
    arr[1] = pos(y-h);
    arr[2] = x;
    arr[3] = y;

    int min = arr[0];

    for(int i = 0; i < 4; i++)
    {
        if(min > arr[i])
            min = arr[i];
    }

    cout << min;
    
    return 0;
    
}