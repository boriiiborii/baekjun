import Foundation

//1764 듣보잡

var dic: [String:Int] = [:]
var array: [String] = []
let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let n = input.first
let m = input.last

for _ in 0..<n! {
    let noListen = readLine()!
    dic[noListen] = 1
}

for _ in 0..<m! {
    let noSee = readLine()!
    if dic.keys.contains(noSee) {
        array.append(noSee)
    }
}
let sortedArray = array.sorted()
print(sortedArray.count)
for i in 0..<sortedArray.count {
    print(sortedArray[i])
}


import Foundation
//1764
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var dic = [String : Int]()
var result = [String]()
for _ in 0..<nm[0] {
    dic[readLine()!] = 0
}
for _ in 0..<nm[1] {
    let input = readLine()!
    if dic[input] != nil {
        result.append(input)
    }
}

print(result.count)
for name in result.sorted() {
    print(name)
}

