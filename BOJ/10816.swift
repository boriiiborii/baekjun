//
//  10816.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/15.
//

import Foundation
//10816
let _ = Int(readLine()!)!
let cards = readLine()!.split(separator: " ").map{Int(String($0))!}
let _ = Int(readLine()!)!
let countingCard = readLine()!.split(separator: " ").map{Int(String($0))!}
var dic = [Int:Int]()
for card in cards {
    if dic[card] == nil {
        dic[card] = 1
    }else {
        dic[card]! += 1
    }
}

for card in countingCard {
    if dic[card] == nil {
        print(0, terminator: " ")
    }else {
        print(dic[card]!, terminator: " ")
    }
}
