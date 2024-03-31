//
//  9095.swift
//  BOJ
//
//  Created by leehwajin on 2023/07/30.
//

import Foundation
// 9095 1,2,3더하기
let n = Int(readLine()!)!
var dp = [0,1,2,4]
for i in 4...11 {
    dp.append(dp[i-3]+dp[i-2]+dp[i-1])
}
for _ in 0..<n {
    let input = Int(readLine()!)!
    print(dp[input])
}

import Foundation
//9095
let times = Int(readLine()!)!

for _ in 0..<times {
    let input = Int(readLine()!)!
    if input < 4 {
        let dp = [0, 1, 2, 4]
        print(dp[input])
    }else {
        var dp = Array(repeating: 0, count: input+1)
        dp[0] = 0
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4
        for i in 4...input {
            dp[i] = dp[i-3]+dp[i-2]+dp[i-1]
        }
        print(dp[input])
    }
}
    

