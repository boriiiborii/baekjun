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
