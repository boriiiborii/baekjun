import Foundation
//15828

var queue = [Int]()
let max = Int(readLine()!)!

while(true) {
    let input = Int(readLine()!)!
    if input == -1 {
        if queue.isEmpty {
            print("empty")
        }else{
            queue.forEach{print($0)}
        }
        break
    }else if input == 0 {
        queue.removeFirst()
    }else if queue.count < max {
        queue.append(input)
    } else {
        continue
    }
}

