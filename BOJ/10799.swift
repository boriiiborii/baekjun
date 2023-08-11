//
//  10799.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/12.
//

import Foundation
//10799 쇠막대기

let input = readLine()!
var stack = [Character]()
var status = false
var result = 0
for i in input {
    if status == true && i == ")" {
        result -= 1
        stack.removeLast()
        status = false
        
        result += stack.count
        continue
    }
    if i == "(" {
        result += 1
        stack.append(i)
        status = true
    }else {
        stack.removeLast()
        status = false
    }
}

print(result)

