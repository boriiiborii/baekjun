import Foundation
//12851 숨바꼭질2
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
let dx = [-1,1,2]

var queue = [(n,0)]
var index = 0
var overlap = 0
var critaria = 999999
var result = 0
var visited = Array(repeating: false, count: 100001)
visited[n] = true
var finished = false


if n == m {
    print(0)
    print(1)
    exit(0)
}

while (index < queue.count) {
    let node = queue[index]
    index += 1
    visited[node.0] = true
    
    var nx = 0
    for i in 0..<3 {
        var nodeDepth = 0
        if (i == 2 || i == 1) && (n > m) {
            continue
        }
        if i == 2 {
            nx = node.0 * dx[i]
        }else {
            nx = node.0 + dx[i]
        }
        nodeDepth = node.1 + 1
        
        if (nodeDepth != critaria) && finished == true { //여기에 critaria가
            print(result)
            print(overlap)
            exit(0)
        }
        
        if nx >= 0 && nx <= 100000 && visited[nx] == false {
            if nx == m { //이쪽을 한번돌아서 이 숫자기준으로 저 nodeDepth랑 다르다면
                result = nodeDepth
                critaria = nodeDepth
                overlap += 1
                finished = true
                queue.append((nx,nodeDepth))
            }else{
                queue.append((nx,nodeDepth))
            }
        }
        //print(queue)
    }
}
