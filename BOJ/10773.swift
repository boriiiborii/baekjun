//
//  10773.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/07.
//

import Foundation
//10773 제로
var n = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<n{
    let input = Int(readLine()!)!
    if input == 0{
        stack.remove(at: stack.endIndex-1)
    }else{
        stack.append(input)
    }
}

var sum = 0
for i in stack{
    sum += i
}

print(sum)


//10773
var stack = [Int]()
for _ in 0..<Int(readLine()!)! {
    let input = Int(readLine()!)!
    if input == 0 {
        stack.removeLast()
    }else {
        stack.append(input)
    }
}
print(stack.reduce(0,+))
