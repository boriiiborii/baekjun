//
//  1009.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/04.
//

import Foundation
//1009 분산처리
for _ in 0..<n{
    let input = readLine()?.split(separator: " ").map{Int(String($0))!}
    var num = 1
    for _ in 0..<input![1]{
        num *= input![0]
        if num > 10{
            num %= 10

        }
    }
    if num == 0{ print(10) }
    else{ print(num) }
}
