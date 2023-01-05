//
//  1076.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/04.
//

import Foundation
//1076 저항
let arr = [
    ["black", "1"],
    ["brown", "10"],
    ["red", "100"],
    ["orange", "1000"],
    ["yellow", "10000"],
    ["green", "100000"],
    ["blue", "1000000"],
    ["violet", "10000000"],
    ["grey", "100000000"],
    ["white", "1000000000"]
]

let firstColor = readLine()!
let secondColor = readLine()!
let thirdColor = readLine()!
var f = 0
var s = 0
var t = 0

//매칭
for i in 0...9{
    if arr[i].contains(firstColor){//contains O(n) 딕셔너리를 키로 쓰면 시간복잡도가 O(1) 더빠름
        f = i
    }
    if arr[i].contains(secondColor){
        s = i
    }
    if arr[i].contains(thirdColor){
        t = i
    }
}
print((10*f + s ) * Int(arr[t][1])!)

