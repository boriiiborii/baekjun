//
//  1003.swift
//  BOJ
//
//  Created by leehwajin on 2023/07/29.
//

import Foundation
//1003 피보나치 함수
let times = Int(readLine()!)!
var arr = [(1,0), (0,1)]

for i in 2...40 {
        arr.append((arr[i-2].0 + arr[i-1].0, arr[i-2].1 + arr[i-1].1))
    }

for _ in 0..<times {
    let number = Int(readLine()!)!
    print("\(arr[number].0) \(arr[number].1)")
}


//1003
var dp = [[1,0], [0,1]]
let times = Int(readLine()!)!
for i in 2...40 {
    let zero = dp[i-1][0] + dp[i-2][0]
    let one = dp[i-1][1] + dp[i-2][1]
    dp.append([zero, one])
}
for _ in 0..<times {
    let input = Int(readLine()!)!
    print(dp[input][0], dp[input][1], separator: " ")
}
