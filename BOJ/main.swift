import Foundation
//15655 N과 M (6)

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
let nElements = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var result = Set<String>()
var visited = [String]()
var arr = Array(repeating: 0, count: 10001)

for i in nElements {
    arr[i] += 1
}
let fixArr = arr

private func dfs() {
    if visited.count == m {
        result.insert(visited.joined(separator: " "))
        //두개가 되면 항상 리턴하여 다음 값을 받아와야 하니까 이 자리가 리턴이 맞음
        return
    }

    for i in nElements {
        if !visited.contains(String(i)){
            visited.append(String(i))
            dfs()
            visited.popLast()
            arr = fixArr
        }else if arr[i] >= 2 {
            arr[i] -= 1
            visited.append(String(i))
            dfs()
            visited.popLast()
            arr = fixArr
        }
    }
}

dfs()

for res in result.sorted() {
    print(res)
}
