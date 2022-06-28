#include <iostream>
#include <string>

using namespace std;

int main(void)
{
    int time;
    
    cin >> time;
    

    for(int i = 0; i < time; i++)
    {
        int sum = 0;
        int score = 0;
        string str;
        cin >> str;

        for(int j = 0; j < str.size(); j++)
        {
            

            if (str[j]=='O')
            {
                ++score;
                sum += score;
            }
            else
                score = 0;
            
        }
        cout << sum << "\n";
        
    }
    return 0;
}