//
//  1181.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/16.
//

import Foundation
//1181 실버
let n = Int(readLine()!)!
var arr = [String]()
for _ in 0..<n{
    arr.append(readLine()!)
}
let a = Set(arr)
arr = Array(a)

let arrr = arr.sorted{$0.count == $1.count ?  $0 < $1 : $0.count < $1.count}

arrr.map{print($0)}

//1181
var arr = [String]()
for _ in 0..<Int(readLine()!)! {
    arr.append(readLine()!)
}
arr = Array(Set(arr))
arr = arr.sorted{$0.count == $1.count ?  $0 < $1 : $0.count < $1.count}
arr.forEach{print($0)}
