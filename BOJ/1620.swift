import Foundation
//1620 나는야 포켓몬마스터 이다솜
var pocketmon: [String] = []
let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = input[0]
let m = input[1]

for _ in 0..<n {
    let newPocketmon = readLine()!
    pocketmon.append(newPocketmon)
}

var pocketmonDict: [String: Int] = [:]

for (index, pocketmonName) in pocketmon.enumerated() {
    pocketmonDict[pocketmonName] = index + 1
}

let invertedDict = Dictionary(uniqueKeysWithValues: zip(pocketmonDict.values, pocketmonDict.keys))

for _ in 0..<m {
    let quiz = readLine()!

    if Int(quiz) != nil {
        if let index = invertedDict[Int(quiz)!] {
            print(index)
        }
    } else {
        if let index = pocketmonDict[quiz] {
            print(index)
        }
    }
}

