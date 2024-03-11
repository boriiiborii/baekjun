//
//  2751.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/11.
//

import Foundation
//2751
var arr = [Int]()
for _ in 0..<Int(readLine()!)! {
    arr.append(Int(readLine()!)!)
}
Array(Set(arr)).sorted().forEach{print($0)}
