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
