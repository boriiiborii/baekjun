//
//  2775.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/17.
//

import Foundation
//2775 부녀회장이될테야
let n = Int(readLine()!)!
for _ in 0..<n{
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 1, count: n), count: k+1)
    for i in 0..<n{
        arr[0][i] = i+1
    }
    for i in 1...k{
        for j in 1..<n{
            arr[i][j] = arr[i-1][j] + arr[i][j-1]
        }
    }
    print(arr[k][n-1])
}

import Foundation
//2775
let times = Int(readLine()!)!
for _ in 0..<times {
    var dp = [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]]
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    for i in 1...k {
        var arr = [0]
        for j in 1...n {
            arr.append(arr[j-1]+dp[i-1][j])
        }
        dp.append(arr)
    }
    print(dp[k][n])
}

