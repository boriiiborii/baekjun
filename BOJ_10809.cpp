#include <iostream>
#include <string>

using namespace std;

int main(void)
{
    string str;
    int alph[27];
    int n;

    cin >> str;

    for(int i = 0; i < 26; i++)
    {
        alph[i] = -1;
    }

    for(int i=0 ; i < str.size(); i++)
    {
        n = str[i] - 'a';
        if(alph[n] == -1)
            alph[n] = i;
    }

    for(int i =0; i < 26; i++)
    {
        cout << alph[i] << " ";
    }

  
}
