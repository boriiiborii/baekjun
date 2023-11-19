//
//  1260.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/09.
//

import Foundation
//2178 미로탐색
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
let dx = [0,0,1,-1]
let dy = [1,-1,0,0]

var map = [[Int]]()
for _ in 0..<n {
    map.append(readLine()!.map{Int(String($0))!})
}

var queue: [(x: Int, y: Int, count: Int)] = [(0,0,1)]
var index = 0
var result = 0

while index < queue.count {
    let node = queue[index]
    index += 1
    
    for i in 0..<4 {
        let nx = node.x + dx[i]
        let ny = node.y + dy[i]
        let nCount = node.count + 1
        
        if nx >= 0 && ny >= 0 && nx < n && ny < m && map[nx][ny] == 1 {
            queue.append((nx,ny,nCount))
            map[nx][ny] = 0
            result = nCount
            if nx == n-1 && ny == m-1 {
                index = queue.count
                break
            }
        }
    }
}
print(result)
