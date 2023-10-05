
import Foundation
//2178 미로탐색
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var result = 0

var map = [[Int]]()
for _ in 0..<n {
    map.append(readLine()!.map{Int(String($0))!})
}

var queue: [(x: Int, y: Int, count: Int)] = [(0,0,1)]
var index = 0

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

while index < queue.count {
    let node = queue[index]
    index += 1
    
    for i in 0..<4 {
        let nx = node.x + dx[i]
        let ny = node.y + dy[i]
        let nCount = node.count+1
        
        if nx >= 0 && ny >= 0 && nx < n && ny < m {
            if map[nx][ny] == 1 {
                result = nCount
                if nx == n-1 && ny == m-1 {
                    index = queue.count
                    break
                }
                map[nx][ny] = 0
                queue.append((nx, ny, nCount))
            }
        }
    }
}

print(result)
