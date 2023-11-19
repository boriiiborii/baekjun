//
//  1260.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/09.
//

import Foundation
//1260 DFS와BFS
var nmv = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nmv[0]
let m = nmv[1]
let v = nmv[2]

var visited = Array(repeating: false, count: n+1)
var matrix = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for i in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    matrix[input[0]][input[1]] = 1
    matrix[input[1]][input[0]] = 1
}

func bfs(_ start :Int) {
    var queue = [start]
    while !queue.isEmpty {
        var node = queue.removeFirst()
        visited[node] = true
        print(node)
        for i in 1...n {
            if visited[i] == false && matrix[i][node] == 1 {
                visited[i] = true
                queue.append(i)
            }
        }
    }
}

func dfs(_ start: Int) {
    visited[start] = true
    print(start, terminator: " ")
    for i in 1..<n+1 {
        if visited[i] == false && matrix[start][i] == 1 {
            dfs(i)
        }
    }
}

