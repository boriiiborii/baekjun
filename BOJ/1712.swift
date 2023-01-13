//
//  1712.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/14.
//

import Foundation
//1712 손익분기점
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let baseCost = input[0]
let perCost = input[1]
let price = input[2]


if perCost > price{
    print(-1)
}else{
    print(baseCost/(price-perCost)+1)
}
