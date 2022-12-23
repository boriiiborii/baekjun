//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = input[0]
let b = input[1]
let v = input[2]
var day = (v-b)/(a-b)
if (((v-b)%(a-b)) != 0){
    day += 1
}
print(day)




