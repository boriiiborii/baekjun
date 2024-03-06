//
//  2609.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/06.
//

import Foundation
//2609
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(GCD(input[0], input[1]))
print(LCM(input[0], input[1]))

func GCD(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return GCD(b, a%b)
    }
}

func LCM(_ a: Int, _ b: Int) -> Int {
   return (a*b)/GCD(a,b)
}
