//
//  1149.swift
//  BOJ
//
//  Created by leehwajin on 2023/07/30.
//

import Foundation
//1149 RGB거리
var lastIndex: Int?

let n = Int(readLine()!)!
var cost = Array(repeating: [0,0,0], count: n+1)
for i in 1...n {
    cost[i] = (readLine()?.split(separator: " ").map{Int($0)!})!
}

for i in 2...n {
    for j in 0...2 {
        if j == 0 {
            cost[i][j] += min(cost[i-1][j+1], cost[i-1][j+2])
        }else if j == 1 {
            cost[i][j] += min(cost[i-1][j-1], cost[i-1][j+1])
        }else {
            cost[i][j] += min(cost[i-1][j-1], cost[i-1][j-2])
        }
    }
}
print(min(cost[n][0], cost[n][1], cost[n][2]))
