//
//  1932.swift
//  BOJ
//
//  Created by leehwajin on 2024/02/26.
//

import Foundation
//1932 정수삼각형
let times = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<times {
    arr.append(readLine()!.split(separator:" ").map{Int($0)!})
}

var dp = arr

for i in 1..<times {
    for j in 0..<arr[i].count {
        if j == 0 {
            dp[i][j] += dp[i-1][j]
        }else if j == arr[i].count-1 {
            dp[i][j] += dp[i-1][j-1]
        }else {
            dp[i][j] += max(dp[i-1][j], dp[i-1][j-1])
            
        }
    }
}
print(dp[times-1].max()!)
