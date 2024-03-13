//
//  1018.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/13.
//

import Foundation
//1018
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var ex1 = Array(repeating: Array(repeating: "W", count: input[1]), count: input[0])
var ex2 = Array(repeating: Array(repeating: "B", count: input[1]), count: input[0])
var arr = [[String]]()

for _ in 0..<input[0] {
    arr.append(readLine()!.split(separator: "").map{String($0)})
}

for i in 0..<8 {
    for j in 0..<8 {
        if (i+j) % 2 != 0 {
            ex1[i][j] = "B"
            ex2[i][j] = "W"
        }
    }
}

var result = 999999
for n in 0..<input[0]-7 {
    for m in 0..<input[1]-7 {
        var count1 = 0
        var count2 = 0
        for i in n..<n+8 {
                    for j in m..<m+8 {
                        if ex1[i-n][j-m] != arr[i][j] {
                            count1 += 1
                        }
                        if ex2[i-n][j-m] != arr[i][j] {
                            count2 += 1
                        }
                    }
                }
        if result > min(count1, count2) {
            result = min(count1, count2)
        }
    }
}

print(result)
