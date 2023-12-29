import Foundation
//15650 n과m(2)

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1], mapSize = nm.max()
var visited = [Int]()

private func bfs() {
    if visited.count == m {
        print(visited.map{String($0)}.joined(separator: " "))
    }
    
    for i in 1...n {
        if !visited.contains(i) && ((visited.max() ?? 0) < i) {
            visited.append(i)
            bfs()
            visited.popLast()
        }
    }
}

bfs()
