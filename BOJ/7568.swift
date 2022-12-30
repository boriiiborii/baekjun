
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/30.
//
import Foundation
//7568덩치
let times = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 2), count: times)
var rate = Array(repeating: 0, count: times)


for i in 0..<times{
    arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

for i in 0..<times{
    for j in 0..<times{
        if(arr[i][0]<arr[j][0]){
            if(arr[i][1]<arr[j][1]){
                rate[i] += 1
            }
        }
    }
}

for i in 0..<times{
    print(rate[i]+1)
}

