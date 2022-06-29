#include <iostream>
using namespace std;

int sqr (int a)
{
    a *= a;

    return a;
}


int main(void)
{
    int input[3];

    for(int i = 0; input[0]!=0 || input[1]!=0 || input[2]!=0; i++)
    {
        
        for(int j = 0; j < 3; j++)
        {
            cin >> input[j];
        }

        if(input[0] == 0 && input[1] == 0 && input[2] == 0)
            break;

        for(int j = 0; j < 2; j++)
        {
            if(input[j] > input[j+1])
            {
                int temp = input[j];
                input[j] = input[j+1];
                input[j+1] = input[j];
            }
        }

        if(sqr(input[2]) == sqr(input[0])+ sqr(input[1]))
        {
            cout << "right" << "\n";
        }
        else
        {
            cout << "wrong" << "\n";
        }
    }
    return 0;
}