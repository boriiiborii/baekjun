//
//  leet7.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/18.
//

import Foundation
//leet 7
class Solution {
    func reverse(_ x: Int) -> Int {

        var y = x
        var arr = [String]()

        if x < 0{
            y = abs(x)
        }

        while true{
            arr.append(String(y%10))
            y /= 10
            if y == 0{
                break
            }
        }
        if x < 0{
            arr.insert("-", at: 0)
        }
        let answer = Int(arr.joined())

        if (Int32.min <= answer!) && (Int32.max >= answer!){
            return answer!
        }
        return 0
    }
}
