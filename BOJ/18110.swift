//
//  18110.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/18.
//

import Foundation
//18110
var arr = [Int]()
let times = Int(readLine()!)!
if times == 0 {
    print(0)
    exit(0)
}
for _ in 0..<times{
    arr.append(Int(readLine()!)!)
}

let num = Int(round(Double(arr.count)*0.15))

let sortArr = arr.sorted()
let resultArr = sortArr[num..<arr.count-num]
print(Int(round(Double(resultArr.reduce(0,+))/Double(resultArr.count))))

