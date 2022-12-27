//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/26.
//

import Foundation
//2751

let timesinput = Int(readLine()!)!
var arr: Array<Int> = []


for i in 0...timesinput-1{
    let input = Int(readLine()!)!
    arr.insert(input, at: i)
}
arr.sort()
arr.map{
    return print($0)
}
