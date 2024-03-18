import Foundation
//10866

var arr = [Int]()
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push_front":
        arr = [Int(input[1])!] + arr
    case "push_back":
        arr.append(Int(input[1])!)
    case "pop_front":
        if !arr.isEmpty {
            print(arr.removeFirst())
        }else {
            print(-1)
        }
    case "pop_back":
        if !arr.isEmpty {
            print(arr.removeLast())
        }else {
            print(-1)
        }
    case "size":
        print(arr.count)
    case "empty":
        if arr.isEmpty {
            print(1)
        }else {
            print(0)
        }
    case "front":
        if arr.isEmpty {
            print(-1)
        }else {
            print(arr.first!)
        }
    case "back":
        if arr.isEmpty {
            print(-1)
        }else {
            print(arr.last!)
        }
    default:
        break
    }
    
}

