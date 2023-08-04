//
//  2606.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/04.
//

import Foundation
//2606 바이러스(인터넷참고)

let com = Int(readLine()!)!
let line = Int(readLine()!)!

var network = [Int: [Int]]()

for num in 1...com {
    network[num] = []
}

for _ in 0..<line {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    let a = temp[0], b = temp[1]
    network[a]?.append(b)
    network[b]?.append(a)
}

var visited = [Int]()

var stack = [1]

while stack.count != 0 {
    guard let temp = stack.popLast() else {continue}
    if !visited.contains(temp){
        visited.append(temp)
        guard let temp2 = network[temp] else {continue}
        stack += temp2
    }
}
print(visited.count-1)
