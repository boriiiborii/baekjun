//
//  2164.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/05.
//

import Foundation
//2164 카드2
let num = Int(readLine()!)!
var arr =  Array(1...num)
var temp = 0

if num == 1 {print(1)}
else{
    while true{
        arr[temp] = 0
        arr.append(arr[temp+1])
        arr[temp+1] = 0
        if arr[arr.count-2] == 0 {print(arr.last!); break}
        temp += 2
    }
}
