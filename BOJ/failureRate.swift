//
//  failureRate.swift
//  BOJ
//
//  Created by leehwajin on 2023/06/14.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int:Double]()
    var number = stages.count
    for i in 1...N {
        var count = 0
        for j in 0..<stages.count {
            if stages[j] == i {
                count += 1
                number -= 1
            }
        }
        if count == 0 {
            dic.updateValue(Double(0), forKey: i)
        }else{
            dic.updateValue(Double(count)/Double(number), forKey: i)
        }
    }
    let sortedKeys = dic.keys.sorted {
        if dic[$0]! == dic[$1]! {
            return $0 < $1
        }
        return dic[$0]! > dic[$1]!
    }
    
    var result = Array(sortedKeys)
    
    return result
}
