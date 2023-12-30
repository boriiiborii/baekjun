import Foundation
//15652 N과 M (4)

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var visited = [Int]()
var result = ""

private func dfs() {
    if visited.count == m{
        result += visited.map{String($0)}.joined(separator: " ") + "\n"
        return
    }
    
    for i in 1...n {
        if (visited.last ?? 0) <= i {
            visited.append(i)
            dfs()
            visited.popLast()
        }
    }
}

dfs()
print(result)
