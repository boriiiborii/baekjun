#include <iostream>
#include <string>

using namespace std;


int main (void)
{
    int aa, bb;

    cin >> aa;
    cin >> bb;


    int num1[3];
    int num2[3];
    
   
        num1[0] = aa/100;
        num1[1] = (aa%100)/10;
        num1[2] = (aa%100)%10;

        num2[0] = bb/100;
        num2[1] = (bb%100)/10;
        num2[2] = (bb%100)%10;
    
    
    int a,b;

    a = num1[2]*100 + num1[1]*10 + num1[0];
    b = num2[2]*100 + num2[1]*10 + num2[0];

    if (a > b)
        cout << a;
    else
        cout << b;
        

    return 0;

}
