import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var array = [Int]()

for number in 1...n {
    array.append(number)
}


var currentIndex = 0
var result = [Int]()

while array.count > 0 {
    currentIndex = (currentIndex + k - 1) % array.count
    result.append(array.remove(at: currentIndex))
}

print("<" + result.map { String($0) }.joined(separator: ", ") + ">")
