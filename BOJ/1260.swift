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

for _ in 0..<m { //그래프 2차원배열로 표현
    let nums = readLine()!.split(separator: " ").map{ Int(String($0))! }
    matrix[nums[0]][nums[1]] = 1
    matrix[nums[1]][nums[0]] = 1
}

func dfs(_ v: Int) {
    visited[v] = true
    print(v, terminator: " ")
    for i in 1..<n+1 {
        if visited[i] == false && matrix[v][i] == 1 {
            dfs(i)
        }
    }
}

func bfs(_ v: Int){
    var que = [Int]()
    visited[v] = false
    que.append(v)
    
    while !que.isEmpty{
        let vv = que.removeFirst()
        print(vv,terminator: " ")
        for i in 1...n{
            if visited[i] == true && matrix[vv][i] == 1{
                que.append(i)
                visited[i] = false
            }
        }
    }
}

dfs(v)
print("")
bfs(v)
