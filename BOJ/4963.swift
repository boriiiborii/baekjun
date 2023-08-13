//
//  4963.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/14.
//

import Foundation
//4963 섬의 개수
let dx = [0, 0, 1, 1, 1, -1, -1, -1]
let dy = [1, -1, 0, 1, -1, 0, 1, -1]

while true {
    var count = 0
    let size = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    // 0 0을 입력받았을 경우 끝내기
    if size == [0, 0] {
        break
    }
    
    // 맵 세팅
    var map = [[Int]]()
    for _ in 0..<size[1] {
        map.append(readLine()!.split(separator: " ").map{Int(String($0))!})
    }
    
    var visited = Array(repeating: Array(repeating: false, count: size[0]+1), count: size[1]+1)
    
    func dfs(_ x: Int, _ y: Int) {
        visited[y][x] = true
        for i in 0...7 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && ny >= 0 && nx < size[0] && ny < size[1] && visited[ny][nx] == false && map[ny][nx] == 1 {
                dfs(nx, ny)
            }
        }
    }
    
    for i in 0..<size[1] {
        for j in 0..<size[0] {
            if map[i][j] == 1 && visited[i][j] == false {
                count += 1
                dfs(j,i)
            }
        }
    }
    print(count)
}
