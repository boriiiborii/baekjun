//
//  1978.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/05.
//

import Foundation
//1978 소수찾기
let _ = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = [Bool](repeating: true, count: input.max()! + 1)
arr[0] = false
arr[1] = false

for i in 2...Int(sqrt(Double(input.max()!))) where arr[i] == true {
    for j in stride(from: i*i, to: input.max()!+1, by: i) {
        arr[j] = false
    }
}

print(input.filter{arr[$0] == true}.count)
