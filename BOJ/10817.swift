//  Created by leehwajin on 2022/12/21.
//

import Foundation

var input = readLine()!.split(separator: " ").map { Int(String($0))! }

for _ in 1...3{
    for i in 0...1{
        var temp = 0
        if(input[i] > input[i+1]){
            temp = input[i+1]
            input[i+1] = input[i]
            input[i] = temp
        }
    }
}
print(input[1])
