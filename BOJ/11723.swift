import Foundation

func main() {
    var s = Array(repeating: 0, count: 21)
    let times = Int(readLine()!)!
    var x = 0

    for _ in 0..<times {
        let input = readLine()!.split(separator: " ").map{String($0)}

        let method = input[0]
        if input.count == 2 {
            x = Int(input[1])!
        }


        switch method {
        case "add" :
            s[x] = 1
        case "remove" :
            s[x] = 0
        case "check" :
            print(s[x])
        case "toggle" :
            if s[x] == 1 {
                s[x] = 0
            } else {
                s[x] = 1
            }
        case "all":
            s = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
        case "empty":
            s[1...20] = [0]
        default:
            break
        }
    }
}

