//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/26.
//

import Foundation
//1018

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var twoArr = [[String]](repeating: Array(repeating: "", count: input[1]), count: input[0])
var count = 0

for i in 0...input[0]{
    for j in 0...input[1]{
        twoArr[i][j] = readLine()!
    }
}

for i in 0...input[0]{
    for j in 0...input[1]{
        guard twoArr[i][(abs(j-i)%2 == 0)] != "B") else{continue}
        twoArr(abs(j-i)%2 == 0) = "B"
        count += 1
        guard twoArr[i][(abs(j-i)%2 != 0)] != "W" else{continue}
        twoArr(abs(j-i)%2 == 0) = "W"
        count += 1
        }
        }
    s
    
        
        
        
    }
}
