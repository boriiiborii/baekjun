import Foundation
//2606 바이러스
var n = Int(readLine()!)!
var m = Int(readLine()!)!
var matrix = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    matrix[input[0]][input[1]] = 1
    matrix[input[1]][input[0]] = 1
}

var visited = Array(repeating: false, count: n+1)
var queue = [1]
var index = 0
var result = 0
visited[1] = true
while index < queue.count {
    var node = queue[index]
    index += 1
    
    for i in 1...n {
        if visited[i] == false && matrix[i][node] == 1 {
            visited[i] = true
            queue.append(i)
            result += 1
        }
    }
}

print(result)
