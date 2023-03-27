import Foundation

let input = Int(readLine()!)!
var count = 0
var number = 0

while true {
    if String(number).contains("666") {
        count += 1
    }
    if count == input {
        print(number)
        break
    }
    number += 1
}
