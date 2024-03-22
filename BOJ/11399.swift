//
//  11399.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/16.
//

import Foundation
//11399 ATM
_ = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var sum = 0

input.sort()

for i in 0..<input.count{
    for j in 0...i{
        sum += input[j]
    }
}

print(sum)


//11399
let _ = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
arr.sort()
var map = Array(repeating: 0, count : arr.count)
map[0] = arr[0]
for i in 1..<arr.count {
    map[i] = map[i-1] + arr[i]
}
print(map.reduce(0,+))
