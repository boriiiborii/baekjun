import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0] - 1
let m = input[1] - 1
var result = 0

result = max(m,n) + min(m,n) * (max(m,n)+1)
print(result)
