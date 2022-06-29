#include <iostream>
using namespace std;

int main(void)
{
    int time;
    int h, w, n;
    int num = 0;
   
    cin >> time;
    
    

    for(int t = 0 ; t < time; t++)
    {
        cin >> h >> w >> n;
        int arr[h][w];
        for(int i = 0; i < h; i++)
        {
            for(int j = 0; j < w; j++)
            {
               arr[i][j] = h-i + (j*h);
                if (n == arr[i][j])
                {
                    cout << 100*(h-i) + (j+1) << "\n";
                    break;
                }
            }
        }
    }
    return 0;
}