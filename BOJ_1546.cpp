#include <iostream>
using namespace std;

int main (void)
{
    int num;
    
    cin >> num;
    float score[num];

    for(int i = 0; i < num; i++)
    {
        cin >> score[i];
    }

    float max = score[0];
    for(int i = 0; i < num; i++)
    {
        if(max < score[i])
            max = score[i];
    }

    float avr;
    float sum = 0;
    for(int i = 0; i < num; i++)
    {
        score[i] = score[i]/max*100;
        sum += score[i];
    }

    avr = sum / num;

    cout << avr;

    return 0;
}