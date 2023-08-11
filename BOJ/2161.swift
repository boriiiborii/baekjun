//
//  2161.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/11.
//

import Foundation
//2161 카드1

let n = Int(readLine()!)!
var queue = Array(repeating: 0, count: n)
var result = [Int]()
for i in 0..<n {
    queue[i] = i+1
}

for _ in 0..<n {
    let rmFirst = queue.remove(at: 0)
    result.append(rmFirst)
    if queue.isEmpty {
        break
    }
    let backNumber = queue.remove(at: 0)
    queue.append(backNumber)
}

for number in result {
    print(number, terminator: "")
    if result.last == number {
        break
    }
    print(" ", terminator: "")
}
