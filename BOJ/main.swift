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

