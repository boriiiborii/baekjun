//
//  9012.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/15.
//

import Foundation
//9012
OUTER: for _ in 0..<Int(readLine()!)! {
    let input = readLine()!
    var stack = [Character]()
    for i in input {
        if i == "(" {
            stack.append(i)
        }else {
            if stack.last == "(" {
                stack.removeLast()
            }else {
                print("NO")
                continue OUTER
            }
        }
    }
    if stack.isEmpty {
        print("YES")
    }else {
        print("NO")
    }

}
