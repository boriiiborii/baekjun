//
//  walkingInPark.swift
//  BOJ
//
//  Created by leehwajin on 2023/06/10.
//

import Foundation

func solution(_ park: [String], _ routes: [String]) -> [Int] {
    var map = [[String]]()
    for str in park {
        let chars = str.map { String($0) }
        map.append(chars)
    }
    
    var result = [Int]()
    
    for i in 0..<park.count {
        for j in 0..<park[0].count {
            if map[i][j] == "S" {
                result = [i, j]
            }
        }
    }
    var test = result
    print("첫 스타트 위치: \(result)")
    
    for route in routes {
        test = result
        let split = route.split(separator: " ")
        let op = String(split[0])
        let distance = Int(split[1]) ?? 0

        switch op {
        case "N":
            guard result[0] - distance >= 0 else {continue}
            for i in 1...distance {
                if map[test[0]-1][test[1]] == "O" || map[test[0]-1][test[1]] == "S" {
                    test[0] -= 1
                }else{
                    break
                }
                if i == distance {
                    result[0] -= distance
                    print("\(route)의 결과 \(result)")
                }
            }
        case "W":
            guard result[1] - distance >= 0 else {continue}
            for i in 1...distance {
                if map[test[0]][test[1]-1] == "O" || map[test[0]][test[1]-1] == "S" {
                    test[1] -= 1
                }else{
                    break
                }
                if i == distance {
                    result[1] -= distance
                    print("\(route)의 결과 \(result)")
                }
            }
        case "E":
            //count-1하는 이유는 인덱스값이 result의 인덱스값은 0부터시작하고 .count값은 1부터 시작하기 때문에 -1을 해줌
            guard result[1] + distance <= park[0].count-1 else {continue}
            for i in 1...distance {
                if map[test[0]][test[1]+1] == "O" || map[test[0]][test[1]+1] == "S" {
                    test[1] += 1
                }else{
                    break
                }
                if i == distance {
                    result[1] += distance
                    print("\(route)의 결과 \(result)")
                }
            }
        case "S":
            guard result[0] + distance <= park.count-1 else {continue}
            for i in 1...distance {
                if map[test[0]+1][test[1]] == "O" || map[test[0]+1][test[1]] == "S" {
                    test[0] += 1
                }else{
                    break
                }
                if i == distance {
                    result[0] += distance
                    print("\(route)의 결과 \(result)")
                }
            }
        default:
            break
        }
    }
    
    return result
}

let result = solution(["SOO","OOO","OOO"], ["E 2","S 2","W 1"])
print("결과:\(result)")
