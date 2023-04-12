
import Foundation
//11047 동전0
//그리디알고리즘

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
var k = input[1]
var arr:[Int] = []
var count = 0

for _ in 0..<n{
    arr.append(Int(readLine()!)!)
}

arr.reverse()

while(k>0){
    Inner : for i in 0..<n{
        if k - arr[i] >= 0{
            k -= arr[i]
            count += 1
            break Inner
        }
    }
}


print(count)

