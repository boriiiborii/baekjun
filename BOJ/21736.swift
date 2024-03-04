import Foundation
//21736 헌내기는 친구가 필요해
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var map = [[String]]()
var queue = [(x:Int, y:Int)]()
var index = 0
var count = 0

for _ in 0..<n {
    map.append(readLine()!.map{String($0)})
}

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

for i in 0..<n {
    for j in 0..<m {
        if map[i][j] == "I" {
            let result = bfs(i,j)
            result == 0 ? print("TT") : print(result)
            exit(0)
        }
    }
}

func bfs(_ x: Int, _ y: Int) -> Int{
    queue = [(x,y)]
    while index < queue.count {
        let node = queue[index]
        index += 1
        
        for i in 0..<4 {
            let nx = node.x + dx[i]
            let ny = node.y + dy[i]
            
            if nx >= 0 && ny >= 0 && nx < n && ny < m {
                if map[nx][ny] == "O" {
                    queue.append((nx, ny))
                }else if map[nx][ny] == "P" {
                    count += 1
                    queue.append((nx, ny))
                }
                map[nx][ny] = "X"
            }
        }
    }
    return count
}

