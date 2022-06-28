#include <iostream>
#include <string>

using namespace std;


int main()
{
    int num;
    do
    {
        cin >> num;
    }while (num > 1001);
    
 
    
    for(int i = 0; i < num; i++)
    {
        int r;
        string str;

        do
        {
            cin >> r;
        }while (r > 8 || r < 1);

        cin >> str;

        for(int j = 0 ; j < str.size(); j++)
        {
            for(int k = 0; k < r; k++)
            {
              cout << str[j];
            }
        }
        cout << "\n";
    }
    return 0;
}