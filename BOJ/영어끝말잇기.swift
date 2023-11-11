import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var arr = Array(repeating: Array(repeating: "", count: 1), count: n)
    var lastWord = ""
    for i in 0..<words.count {
        if words[i].count == 1 {
            return [i%n+1, arr[i%n].count]
        }
        if lastWord.last != words[i].first && i != 0 {
            return [i%n+1, arr[i%n].count]
        }
        if !(arr.flatMap{$0}.filter{$0 == words[i]}.isEmpty) {
            return [i%n+1, arr[i%n].count]
        }
        arr[i%n].append(words[i])
        lastWord = words[i]
    }
    return [0,0]
}
