//
//  11651.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/07.
//

import Foundation
//11651 좌표정렬하기2
let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

arr.sort{$0[1]==$1[1] ? $0[0]<$1[0] : $0[1]<$1[1] }

for i in arr{
    print(i[0], i[1])
}


import Foundation
//11651
var arr = [[Int]]()
for i in 0..<Int(readLine()!)! {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
arr.sort{$0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]}
for i in 0..<arr.count {
    for j in 0..<2 {
        print(arr[i][j], terminator: " ")
    }
    print("")
}
