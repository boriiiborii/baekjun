
import Foundation
//15649 n과m(1) 백트래킹문제

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
let mapSize = nm.max()!
var visited = [Int]()

private func bfs() {
    if visited.count == m {
        print(visited.map{String($0)}.joined(separator: " "))
    }
    
    for i in 1...n {
        if !visited.contains(i) {
            visited.append(i)
            bfs()
            visited.popLast()
        }
    }
}

bfs()
