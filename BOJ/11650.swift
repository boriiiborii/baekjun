//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/31.

import Foundation
//11650 좌표정렬하기
let n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 2), count: n)
var temp = Array(repeating: 0, count: 2)


for i in 0..<n{
    arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

var sortedArr = arr.sorted{($0[0],$0[1]) < ($1[0],$1[1])}

for i in 0..<n{
        print("\(sortedArr[i][0]) \(sortedArr[i][1])")
}


//import Foundation
//11650
var arr = [[Int]]()
for _ in 0..<Int(readLine()!)! {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
let result = arr.sorted{$0[0] != $1[0] ? $0[0] < $1[0] : $0[1] < $1[1]}
for i in 0..<result.count {
    for j in 0..<2 {
        print(result[i][j], terminator: " ")
    }
    print("")
}

