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
