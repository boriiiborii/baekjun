//
//  choiceOrange.swift
//  BOJ
//
//  Created by leehwajin on 2023/06/06.
//

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {

    var arr = Array(repeating: 0, count: tangerine.max()! + 1)
    var count = 0
    var temp = k
    
    for i in tangerine {
        arr[i] += 1
    }
    
    arr.sort()
    arr.reverse()

    for i in 0..<arr.count {
        if temp - arr[i] > 0 {
            temp -= arr[i]
            count += 1
        }else {
            count += 1
            break
        }
    }
    return count
}
