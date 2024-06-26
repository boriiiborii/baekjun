//
//  11659.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/05.
//

import Foundation
//11659 구간 합 구하기4

let n = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = [0] + readLine()!.split(separator: " ").map{Int(String($0))!}
for i in 1...n[0] {
    arr[i] += arr[i-1]
}
for _ in 0..<n[1] {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let start = input[0]
    let end = input[1]
    var result = 0
    result = arr[end] - arr[start-1]
    print(result)
}

--------------------
(이 코드는 시간초과가 남)
import Foundation
let times = readLine()!.split(separator: " ").map{Int(String($0))!}[1]
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
for _ in 0..<times {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    print((arr[input[0]-1...input[1]-1]).reduce(0,+))
}
