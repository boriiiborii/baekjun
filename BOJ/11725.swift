
import Foundation
//11725 트리의 부모 찾기

let nodeNumbers = Int(readLine()!)!
var graph = Array(repeating: Array(repeating: 0, count: 0), count: nodeNumbers+1)

for _ in 0..<nodeNumbers-1 {
    let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[nm[0]].append(nm[1])
    graph[nm[1]].append(nm[0])
}

var visited = Array(repeating: 0, count: nodeNumbers+1)

func bfs() {
    var queue = [1]
    var index = 0
    
    while index < queue.count {
        let node = queue[index]
        
        for i in graph[node] {
            if visited[i] == 0 {
                visited[i] = node
                queue.append(i)
            }
        }
        index += 1
    }
}

bfs()

for i in 2...nodeNumbers {
    print(visited[i])
}
