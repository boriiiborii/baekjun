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
