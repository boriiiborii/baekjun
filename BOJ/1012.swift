//
//  1012.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/13.
//

import Foundation
//1012 유기농배추

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

let times = Int(readLine()!)!

for _ in 0..<times {
    var count = 0
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    var visited = Array(repeating: Array(repeating: false, count: input[1]), count: input[0])
    var map = Array(repeating: Array(repeating: 0, count: input[1]+1), count: input[0]+1)
    
    
    for _ in 0..<input[2] {
        let setting = readLine()!.split(separator: " ").map{Int(String($0))!}
        map[setting[0]][setting[1]] = 1
    }
    
    for i in 0..<input[0] {
        for j in 0..<input[1] {
            if map[i][j] == 1 && visited[i][j] == false {
                dfs(i, j)
                count += 1
            }
        }
    }
    
    func dfs(_ x: Int, _ y: Int) {
        visited[x][y] = true
        for i in 0...3 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && ny >= 0 && nx < input[0] && ny < input[1] && !visited[nx][ny] && map[nx][ny] == 1 {
                dfs(nx, ny)
            }
        }
    }
    print(count)
}

//import Foundation
////1012 유기농배추
//
//var map = [[Int]]()
//var mnk = [Int]()
//for _ in 0..<Int(readLine()!)! {
//    var result = 0
//    mnk = readLine()!.split(separator: " ").map{Int(String($0))!}
//    map = Array(repeating: Array(repeating: 0, count: mnk[1]), count: mnk[0])
//    
//    for _ in 0..<mnk[2] {
//        let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//        map[input[0]][input[1]] = 1
//    }
//    
//    for i in 0..<mnk[0] {
//        for j in 0..<mnk[1] {
//            if map[i][j] == 1 {
//                bfs(i,j)
//                result += 1
//            }
//        }
//    }
//    
//    print(result)
//    
//}
//
//
//func bfs(_ x: Int, _ y:Int) {
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//    
//    var queue = [(x: x,y: y)]
//    
//    while !queue.isEmpty {
//        let node = queue.removeFirst()
//        let x = node.x
//        let y = node.y
//        
//        if map[x][y] == 1 {
//            map[x][y] = 0
//            
//            for i in 0..<4 {
//                let nx = node.x+dx[i]
//                let ny = node.y+dy[i]
//                
//                if nx >= 0 && ny >= 0 && nx < mnk[0] && ny < mnk[1] && map[nx][ny] == 1 {
//                    queue.append((nx,ny))
//                }
//            }
//        }
//    }
//}
