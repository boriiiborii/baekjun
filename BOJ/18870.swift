import Foundation
//18870 좌표압축

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var dic = [Int:Int]()
var value = 0

var arr = input.sorted()

for i in arr {
    if dic[i] == nil {
        dic.updateValue(value, forKey: i)
        value  += 1
    }
}

for i in input {
    print(dic[i]!, terminator: " ")
}
