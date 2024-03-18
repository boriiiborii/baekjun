//
//  1929.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/18.
//

import Foundation
//1929
let nm = readLine()!.split(separator: " ").map{Int($0)! }

var arr: [Bool] = Array(repeating: true, count: nm[1] + 1)
arr[0] = false
arr[1] = false
if nm[1] < 2 {
    
}else {
    for i in 2...nm[1] where arr[i] == true {
        for j in stride(from: i+i, through: nm[1], by: i) {
            arr[j] = false
        }
    }

    for i in 0...nm[1] where arr[i] == true {
        if nm[0]...nm[1] ~= i{
            print(i)
        }
    }

}
