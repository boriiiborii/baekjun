//
//  1259.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/06.
//

import Foundation
//1259
while true {
    let input = readLine()!.map{Int(String($0))!}
    if input == [0] {
        break
    }
    input == input.reversed() ? print("yes") : print("no")

}
