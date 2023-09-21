
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

var arr = [Int]()

let n = Int(readLine()!)! // the number of temperatures to analyse
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    arr.append(Int(i)!)
}

if arr.isEmpty {
    print("0")
    exit(0)
}
var result = 999

for i in 0...arr.count-1 {
    if result > abs(arr[i]) {
        result = abs(arr[i])
    }
}

if arr.contains(result) {
    print(result)
}else {
    print("-\(result)")
}
// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)
