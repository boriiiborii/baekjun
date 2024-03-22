
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

import Foundation
//11047
let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
var k = nk[1]
var money = [Int]()
for _ in 0..<nk[0] {
    money.append(Int(readLine()!)!)
}
money = money.sorted(by: >)
var count = 0
for i in money {
    if k >= i {
        let num = k/i
        k -= num*i
        count += num
    }
    if k == 0 {
        print(count)
        break
    }
}
