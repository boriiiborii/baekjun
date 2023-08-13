//
//  2667.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/13.
//

import Foundation
//2667 단지번호붙이기

let mapSize = Int(readLine()!)!
var map = [[Int]]()
var visited = Array(repeating: Array(repeating: false, count: mapSize+1), count: mapSize+1)
for _ in 0..<mapSize {
    map.append(readLine()!.map{Int(String($0))!})
}
let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]
var count = 0

var result = [Int]()
for i in 0..<mapSize {
    for j in 0..<mapSize {
        if map[i][j] == 1 && visited[i][j] == false {
            count = 0
            dfs(x: i, y: j)
            result.append(count)
        }
    }
}

private func dfs(x: Int, y: Int) {
    visited[x][y] = true
    count += 1
    for i in 0...3 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if nx >= 0 && ny >= 0 && nx < mapSize && ny < mapSize {
            if map[nx][ny] == 1 && !visited[nx][ny] {
                dfs(x: nx, y: ny)
            }
        }
    }
}

print(result.count)
let sortedResult = result.sorted()
sortedResult.forEach{print($0)}
