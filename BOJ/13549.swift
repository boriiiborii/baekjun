import Foundation
//13549 숨바꼭질
//메모리초과
let len = 100000
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nm[0], nm[1])

func bfs(_ s: Int, _ e: Int) -> Int {
    var queue: [(n:Int, d:Int)] = [(s,0)]
    var index = 0
    
    while index < queue.count {
        var node = queue[index]
        index += 1
        for nx in [node.n-1, node.n+1, node.n*2] {
            if (0...len).contains(nx) {
                if nx == e
                {
                    return node.d+1
                }
                if nx != node.n*2 {
                    queue.append((nx, node.d+1))
                }else {
                    queue.append((nx, node.d))
                }
            }
        }
    }
    return 0
}

print(bfs(n,k))
----------------------------------------------
import Foundation
//13549 숨바꼭질3
//이거다!!!!!! 우선순위큐(우선순위엔 insert사용하기 !)
let len = 100001
let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var sec = Array(repeating: -1, count: len+1)
var visited = Array(repeating: false, count: len+1)

func bfs(_ s: Int, _ e: Int) -> Int {
    var queue: [Int] = [s]
    var index = 0
    visited[s] = true
    sec[s] = 0
    
    while index < queue.count {
        let node = queue[index]
        index += 1
        print(node)
        
        // '2배 이동'을 먼저 수행
        if node * 2 < len && !visited[node * 2] {
            queue.insert(node * 2, at: index)
            visited[node * 2] = true
            sec[node * 2] = sec[node]
            if node*2 == e {
                return sec[e]
            }
        }
        
        // '1칸 이동'과 '-1칸 이동'을 수행
        for i in [node - 1, node + 1] {
            if i >= 0 && i < len && !visited[i] {
                queue.append(i)
                visited[i] = true
                sec[i] = sec[node] + 1
                if i == e {
                    return sec[e]
                }
            }
        }
    }
    return sec[e]
}

print(bfs(n, k))
