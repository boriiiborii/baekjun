//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/01.

import Foundation
//10814 나이순정렬
let times = Int(readLine()!)!
var arr = [[String]]()

for _ in 0..<times{
    arr.append(readLine()!.split(separator: " ").map{String($0)})
}
arr.sort{Int($0[0])! < Int($1[0])!}
for i in arr{
    print(i[0], i[1])
}
