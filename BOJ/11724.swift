//
//  11724.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/14.
//

import Foundation
//11724 연결 요소의 개수

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var visited = Array(repeating: false, count: input[0]+1)
var list = Array(repeating: [], count: input[0]+1)
var count = 0
var depth = 0

//list세팅
for _ in 0..<input[1] {
    let link = readLine()!.split(separator: " ").map{Int(String($0))!}
    list[link[0]].append(link[1])
    list[link[1]].append(link[0])
}

private func dfs(_ now: Int, _ depth: Int) {
    visited[now] = true
    for i in 0..<list[now].count {
        let next = list[now][i]
        if !visited[next as! Int] {
            dfs(next as! Int, depth + 1)
        }
    }
}

for i in 1...input[0] {
    if !visited[i] {
        count += 1
        dfs(i, depth)
    }
}

print(count)
