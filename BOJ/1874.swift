//
//  1874.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/07.
//

import Foundation
//1874 스택수열
var n = Int(readLine()!)!

var intArr = [Int]()
var stringArr = [String]()
var count = 1

for _ in 0..<n{
    let num = Int(readLine()!)!
    
    while count <= num{
        intArr.append(count)
        stringArr.append("+")
        count += 1
    }
    
    if intArr.last == num{
        intArr.popLast()
        stringArr.append("-")
    }else{
        print("NO")
        exit(0)
    }
}
print(stringArr.joined(separator: "\n"))
