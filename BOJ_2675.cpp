#include <iostream>
#include <string>

using namespace std;

int main()
{
    int num;
    cin >> num;
    
    for(int i = 0; i < num; i++)
    {
        int r;
        string str;

        cin >> r;
        cin >> str;

        for(int j = 0 ; j < str.size(); j++)
        {
            for(int k = 0; k < r; k++)
            {
              cout << str[j];
            }
        }
    }
    return 0;
}