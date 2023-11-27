import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var graph = [[Int]]()
var queue = [(x:Int, y:Int)]()
let dx = [0,0,-1,1]
let dy = [1,-1,0,0]
var day = 0

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
if graph.flatMap{$0}.filter{$0 != 0}.count == 0 {
    print(0)
    exit(0)
}

while true {
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] != 0 {
                let result = bfs(i,j,graph)
                graph.forEach({print($0)})
                print("")
                if !result {
                    print(day)
                    exit(0)
                }else {
                    //하나씩 녹는 코드
                    graph = graph.map { row in
                        return row.map { element in
                            if element == 0 {
                                return 0
                            }
                            return element-1
                        }
                    }
                    if graph.flatMap{$0}.filter({$0 != 0}).count == 0 {
                        print(0)
                        exit(0)
                    }else {
                        day += 1
                    }
                }
            }
        }
    }

}



func bfs(_ x: Int, _ y: Int, _ graph: [[Int]]) -> Bool{
    queue = [(x,y)]
    var index = 0
    var graph = graph
    while index < queue.count {
        let node = queue[index]
        index += 1
        
        for i in 0..<4 {
            let nx = node.x+dx[i]
            let ny = node.y+dy[i]
            
            if nx >= 0 && ny >= 0 && nx < n && ny < m {
                if graph[nx][ny] != 0 {
                    queue.append((nx,ny))
                    graph[nx][ny] = 0
                }
            }
        }
    }
    return (graph.flatMap{$0}.filter{$0 != 0}.count) == 0 //트루 다녹았음 펄스 다안녹았음
}










