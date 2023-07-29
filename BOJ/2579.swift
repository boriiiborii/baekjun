//
//  2579.swift
//  BOJ
//
//  Created by leehwajin on 2023/07/29.
//

import Foundation
//2579 계단오르기
let times = Int(readLine()!)!
var stair: [Int] = [0]
for _ in 1...times {
    stair.append(Int(readLine()!)!)
}

var dp = Array(repeating: 0, count: times+1)
dp[0] = 0
for i in 1...times {
    if i == 1 {
        dp[1] = stair[1]
    }else if i == 2 {
        dp[2] = stair[1] + stair[2]
    }else if i == 3 {
        dp[3] = max(stair[1]+stair[3], stair[2]+stair[3])
    }else {
        dp[i] = (max(stair[i-1]+stair[i]+dp[i-3],stair[i]+dp[i-2]))
    }
}

print(dp[times])
