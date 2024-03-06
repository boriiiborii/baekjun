//
//  1546.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/06.
//

import Foundation
//1546
let _ = Int(readLine()!)!
let score = readLine()!.split(separator: " ").map{Double(String($0))!}
let max = score.max()
var sum = 0.0
for i in score {
    let n = (Double(i)/Double(max!))*Double(100)
    sum += n
}
print(Double(sum)/Double(score.count))
