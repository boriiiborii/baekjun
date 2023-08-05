//
//  11726.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/05.
//

import Foundation

//11726 2xn 타일링
let input = Int(readLine()!)!
var arr = Array(repeating: 0, count: input + 1)

if input <= 2 {
    let temp = [0, 1, 2]
    print(temp[input])
} else {
    arr[0...2] = [0, 1, 2]
    for i in 3...input {
        arr[i] = (arr[i-2] + arr[i-1]) % 10007
    }
    print(arr[input])
}
