//
//  11723.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/21.
//

import Foundation
//11723
var set = Set<Int>()

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { String($0) }
    switch input[0] {
    case "add":
        set.insert(Int(input[1])!)
    case "remove":
        set.remove(Int(input[1])!)
    case "check":
        print(set.contains(Int(input[1])!) ? 1 : 0)
    case "toggle":
        if set.contains(Int(input[1])!) {
            set.remove(Int(input[1])!)
        } else {
            set.insert(Int(input[1])!)
        }
    case "all":
        set = Set(1...20)
    case "empty":
        set.removeAll()
    default:
        break
    }
}
