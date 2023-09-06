import Foundation
//1541

let input = readLine()!.split(separator: "-").map{$0}
var result = 0
var isFirst = true
for i in input {
    if isFirst {
        let number = i.split(separator: "+").map{$0}
        for j in number {
            result += Int(j)!
        }
        isFirst = false
    }else {
        let number = i.split(separator: "+").map{$0}
        for j in number {
            result -= Int(j)!
        }
    }
    
}
print(result)
