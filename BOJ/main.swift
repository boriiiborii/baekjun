import Foundation
//미로탐색

func solution(_ maps:[String]) -> Int {
    var map = [[Character]]()
    var laber = false
    var visited = Array(repeating: Array(repeating: false, count: maps[0].count), count: maps.count)
    
    let dx = [0,0,-1,1]
    let dy = [1,-1,0,0]
    var index = 0

    var sx = 0
    var sy = 0
    
    for i in maps {
        map.append(Array(i))
    }
    
    for x in 0..<maps.count {
        for y in 0..<maps[0].count {
            if map[x][y] == "S" {
                sx = x
                sy = y
                break
            }
        }
    }
    
    var queue: [(x:Int, y: Int, depth: Int)] = [(x: sx,y: sy,depth: 0)]
    while index < queue.count {
        let node = queue[index]
        index += 1
        
        if map[node.x][node.y] == "L" && !laber {
            laber = true
            queue = [(x: node.x,y: node.y,depth: node.depth)]
            index = 1
            visited = Array(repeating: Array(repeating: false, count: maps[0].count), count: maps.count)
            visited[node.x][node.y] = true
        }

        if map[node.x][node.y] == "E" && laber {
            return node.depth
        }
        
        for i in 0..<4 {
            let nx = node.x + dx[i]
            let ny = node.y + dy[i]
            let nDepth = node.depth+1
            
            if nx >= 0 && nx < map.count && ny >= 0 && ny < maps[0].count && map[nx][ny] != "X" && visited[nx][ny] == false {
                visited[nx][ny] = true
                queue.append((x:nx, y:ny, depth: nDepth))
            }
        }
    }
    return -1
}

print(solution(["SOOLO", "OEOOO", "OOOOO", "OOOOO", "OOOOO"]))
