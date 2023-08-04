//
//  9375.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/04.
//

import Foundation
//9375 패션왕 신해빈
var dic: [String:[String]] = [:]
var result = 0
let n = Int(readLine()!)!

for _ in 0..<n {
    let times = Int(readLine()!)!
    if times == 0 {
        print(0)
        continue
    }
    dic = [:]
    result = 1
    for _ in 0..<times {
        let input = readLine()!.split(separator: " ").map{String($0)}
        if dic.keys.contains(input[1]) {
            dic[input[1]]!.append(input[0])
        }else {
            dic[input[1]] = [input[0]]
        }
    }
    for i in dic.enumerated(){
        result *= i.element.value.count+1
    }
    result -= 1
    print(result)
}
