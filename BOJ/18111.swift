//
//  18111.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/23.
//

import Foundation
//18111 (시간초과/ 문제 해답이 구글링에 존재하지 않음)
let nmb = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = [[Int]]()
for _ in 0..<nmb[0] {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let flatMap = arr.flatMap{$0}
let maxNum = flatMap.max()!
let minNum = flatMap.min()!

var countDic = [Int:Int]()
for i in minNum...maxNum where i <= 256 {
    for j in 0..<nmb[0] {
        for k in 0..<nmb[1] {
            if arr[j][k] == i {
                continue
            }else if arr[j][k] > i {
                let value = (arr[j][k] - i)*2
                countDic[i] = (countDic[i] ?? 0) + value
            }else {
                let value = (i-arr[j][k])
                if value <= nmb[2] {
                    countDic[i] = (countDic[i] ?? 0) + value
                }
            }
        }
    }
}

let result = countDic.sorted{
    $0.value == $1.value ? $0.key > $1.key : $0.value < $1.value
}[0]
print(result.value, result.key , separator: " ")
