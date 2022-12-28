//
//  1181.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/28.
//

import Foundation
//1181

let times = Int(readLine()!)!
var stArr = Array(repeating: "", count: times)

for i in 0..<times{
    stArr[i] = readLine()!
}
stArr.sort()

for i in 0..<times{
    if times == 1{
        break
    }
    var temp = ""
    if stArr[i].count >= stArr[i+1].count{
        temp = stArr[i+1]
        stArr[i+1] = stArr[i]
        stArr[i] = temp
        if (i == times-2){
            break
        }
    }
}
var num = 0
for i in 0..<stArr.count-1{
    if stArr[i] == stArr[i+1]{
        stArr.remove(at: i)
        num += 1
    }
    if i == stArr.count-1-num{
        break
    }
}

for i in 0..<stArr.count{
    print(stArr[i])
}

