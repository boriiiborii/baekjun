import Foundation
//15654 N과 M (5)

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var nElements = readLine()!.split(separator: " ").map{Int(String($0))!}
nElements = nElements.sorted()
var result = ""
var visited = [Int]()

private func dfs() {
    if visited.count == m {
        result += visited.map{String($0)}.joined(separator: " ") + "\n"
    }
    
    for i in nElements {
        if !visited.contains(i) {
            visited.append(i)
            dfs()
            visited.popLast()
        }
        
    }
}

dfs()
print(result)
