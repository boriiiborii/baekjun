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

import Foundation
//11866
var arr = [[Int]]()
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let num = input[1]
for i in 1...input[0] {
    let ele = [i, 1]
    arr.append(ele)
}

var count = 0
var result = [Int]()
Outer: while arr.count != result.count {
    for i in 0..<arr.count {
        if arr[i][1] == 1 {
            count += 1
        }
        if count == num {
            result.append(arr[i][0])
            arr[i][1] = 0
            count = 0
        }
        if arr.count == result.count {
            break Outer
        }
    }
}

var resultStr = "<"

for i in result {
    if (result.last != i) {
        resultStr += String(i)
        resultStr += ", "
    }else {
        resultStr += String(i)
        
    }
}
print(resultStr+">")
