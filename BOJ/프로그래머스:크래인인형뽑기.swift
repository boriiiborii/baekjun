//
//  프로그래머스:크래인인형뽑기.swift
//  BOJ
//
//  Created by leehwajin on 2023/02/01.
//

import Foundation

let arr = [[0, 0, 0, 0, 0], [0, 0, 1, 0, 3], [0, 2, 5, 0, 1], [4, 2, 4, 4, 2], [3, 5, 1, 3, 1]]
let moves = [1,5,3,5,1,2,1,4]



func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var array = board
    var result = 0
    var stack = [Int]()
    for i in moves{
        for j in  0...4{
            if array[j][i-1] != 0{
                stack.append(arr[j][i-1])
                array[j][i-1] = 0
            Outter: while true{
                var num = 0
                for k in 1..<stack.count{
                    if stack[k-1] == stack[k]{
                        stack.remove(at: k)
                        stack.remove(at: k-1)
                        result += 2
                    }else{
                        num += 1
                    }
                }
                if num == stack.count-1{
                    break Outter
                }
            }
                break
            }
        }
    }
    return result
}


print(solution(arr, moves))
