//
//  1697.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/15.
//

import Foundation

func bfs() {
    let nk = readLine()!.split(separator: " ").map{ Int($0)! }
    var queue = [(nk[0], 0)] // 수빈이의 첫 위치가 시작점, depth 는 0
    var visited = Array(repeating: false, count: 100001)
    visited[nk[0]] = true
    var idx = 0

    while idx <= queue.count {
        let temp = queue[idx]
        let place = temp.0
        let depth = temp.1

        if place == nk[1] {
            print("\(depth)")
            break
        }

        for i in 0..<3 {
            var nextPlace = 0

            switch i {
            case 0:
                nextPlace = place - 1
            case 1:
                nextPlace = place + 1
            default:
                nextPlace = place * 2
            }

            if nextPlace >= 0, nextPlace <= 100000, !visited[nextPlace] {
                visited[nextPlace] = true
                queue.append((nextPlace, depth + 1))
            }
        }

        idx += 1
    }
}

bfs()
----------------------------------------------------------------------------------------------------------------------------------------
//20231224
import Foundation
//1697 숨바꼭질

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0]
let k = nk[1]
var visited = Array(repeating: false, count: 100001)
let dx = [1, -1, 2]

func bfs(start: Int, end:Int) -> Int {
    var queue: [(place:Int, depth:Int)] = [(start,0)]
    var index = 0
    visited[start] = true
    
    if start == end {
        return 0
    }
    
    while index < queue.count {
        let node = queue[index]
        index += 1
        
        for i in 0..<3 {
            var newPlace = 0
            if i == 2 {
                newPlace = node.place*dx[i]
            }else {
                newPlace = node.place+dx[i]
            }
            if newPlace == end {
                return node.depth+1
            }
            if newPlace >= 0 && newPlace <= 100000 && !visited[newPlace]{
                visited[newPlace] = true
                queue.append((newPlace,node.depth+1))
            }
        }
    }
    return 0
}

print(bfs(start: n, end: k))
