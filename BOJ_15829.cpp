#include <iostream>
#include <string>
using namespace std;

int squ31(int a){
    int sum = 1;
    for(int i = 0; i < a; i++){
        sum *= 31;
    }
    return sum;
}

int main(void){

    int num;
    cin >> num;
        string input; 
        cin >> input;
        int sum = 0;
        for(int i = 0; i < num; i++){
            sum += (input[i]-'a'+1)*squ31(i);
        }

        cout << sum;
}