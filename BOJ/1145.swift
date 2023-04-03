
import Foundation
//1145
let input = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 1...1000000{
    var count = 0
    for j in input{
        if i % j == 0{
            count += 1
            if count == 3{
                print(i)
                exit(0)
            }
        }
    }
}
