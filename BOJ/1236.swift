import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var map = [[String]]()
for _ in 0..<n {
    map.append(readLine()!.map { String($0) })
}

var row = Array(repeating: false, count: n)
var col = Array(repeating: false, count: m)

for i in 0..<n {
    for j in 0..<m {
        if map[i][j] == "X" {
            row[i] = true
            col[j] = true
        }
    }
}

let rowCnt = row.filter { $0 == false }.count
let colCnt = col.filter { $0 == false }.count
print(max(rowCnt, colCnt))
