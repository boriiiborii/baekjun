//
//  9461.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/04.
//

import Foundation
//9461 파도반 수열

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 101)
dp[1...10] = [1, 1, 1, 2, 2, 3, 4, 5, 7, 9]
for i in 11...100 {
    dp[i] = dp[i-3]+dp[i-2]
}
for _ in 0..<n {
    let input = Int(readLine()!)!
    print(dp[input])
}

import Foundation
//9461
for _ in 0..<Int(readLine()!)! {
    let input = Int(readLine()!)!
    var arr = [1, 1, 1, 2, 2, 3, 4, 5, 7, 9]
    if input < arr.count {
        print(arr[input-1])
    }else {
        for i in 10...input {
            arr.append(arr[i-3]+arr[i-2])
        }
        print(arr[input-1])
    }
}
