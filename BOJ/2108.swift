//
//  2108.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/10.
//

import Foundation
//2108 통계학
let n = Int(readLine()!)!
var arr = [Int]()
var sum = 0
var dic = [Int:Int]()

for _ in 0..<n{
    let input = Int(readLine()!)!
    arr.append(input)
    sum += input
}

let avr = Int(round((Double(sum) / Double(arr.count))))
let mid = arr.sorted()[arr.count/2]
var bin = 0

let range = arr.max()! - arr.min()!

for i in arr{
    (dic[i] == nil) ? (dic[i] = 1) : (dic[i]! += 1)
}

var sortedDitionary = dic.sorted{$0.1==$1.1 ? $0.0 < $1.0 : $0.1 > $1.1 }

if dic.count >= 2{

    if sortedDitionary[0].value == sortedDitionary[1].value{
        bin = sortedDitionary[1].key
    }else{
        bin = sortedDitionary[0].key
    }
}else{
    bin = dic.first!.key
}

print(avr)
print(mid)
print(bin)
print(range)

