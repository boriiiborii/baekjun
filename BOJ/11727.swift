//
//  11727.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/06.
//

import Foundation

//11727 2xn 타일링2
let input = Int(readLine()!)!
var arr = Array(repeating: 0, count: input+1)
if input < 3 {
    let temp = [0, 1, 3, 5]
    print(temp[input])
}else {
    arr[1...3] = [1, 3, 5]
    for i in 3...input {
        arr[i] = (arr[i-1]+2*(arr[i-2]))%10007
    }
    print(arr[input])
}

import Foundation
//11727
let input = Int(readLine()!)!
var arr = [0, 1, 3]
if input < arr.count {
    print(arr[input])
}else {
    for i in 3...input {
        arr.append((arr[i-1]+arr[i-2]+arr[i-2])%10007)
    }
    print(arr[input])
}
