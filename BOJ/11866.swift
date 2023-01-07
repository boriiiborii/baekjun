//
//  11866.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/07.
//

import Foundation
//11866 요세푸스문제
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0]
var gap = input[1]
var arr = Array(repeating: true, count: n)
var outArr = [Int]()

var count = 0
var a = 0
for i in 0..<99999999999{
    a = i % n
    if arr[a] == true{
        count += 1
    }
    if count == gap{
        outArr.append(a+1)
        count = 0
        arr[a] = false
    }
    if outArr.count == n{
    break
    }
}

print("<",terminator: "")
for i in outArr{
    print(i, terminator: "")
    if i != outArr.last{print(", ", terminator: "")}
}
print(">")
