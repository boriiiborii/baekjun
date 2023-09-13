//
//  2805.swift
//  BOJ
//
//  Created by leehwajin on 2023/09/13.
//

import Foundation
//2805 나무자르기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let needLength = input[1]
let tree = readLine()!.split(separator: " ").map { Int(String($0))! }

var highest = tree.max()!
var mid = 0
var result = 0

logic(left: 0, right: highest)

func logic(left: Int, right: Int) {
    mid = (left + right) / 2
    var cutting = 0

    for height in tree {
        if height > mid {
            cutting += height - mid
        }
    }

    if cutting >= needLength {
        result = mid
        if left < right {
            logic(left: mid + 1, right: right)
        }
    } else {
        if left < right {
            logic(left: left, right: mid - 1)
        }
    }
}

print(result)
