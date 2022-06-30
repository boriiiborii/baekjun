#include <iostream>
#include <string>
using namespace std;

int main(void)
{
    string input;
    
    while(1)
    {
        cin >> input;
        if(input[0] == '0')
            return 0;

        int size = input.size();
        for(int i = 0; i < size ; i++)
        {
            if(input[i] != input[size-i-1])
            {
                cout << "no" << "\n";
                break;
            }
            else
            {
                if(i+1 == (size+1)/2)
                {
                    cout << "yes" << "\n";
                    break;
                }
                else
                    continue;
            }
        }
    }
    return 0;
}