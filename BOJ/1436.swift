//
//  1436.swift
//  BOJ
//
//  Created by leehwajin on 2024/03/08.
//

import Foundation
//1436(이게 시간초과가 뜨네)
var temp = 666
var count = 0
let n = Int(readLine()!)!
while true {
    if String(temp).contains("666") {
        count += 1
        if count == n  {
            print(temp)
            break
        }
    }
    temp += 1
}

//이렇게 해야 시간초과가 안남
let n = Int(readLine()!)!
var count = 0
var result = 665 //1번

while true { //2번
    result += 1
    let resultChar = String(result) //3번
    var 판별 = 0
    for i in resultChar {

        if i == "6" { //4번
           판별 += 1
        }else {
            판별 = 0
        }

        if 판별 == 3 { //5번
            count += 1
        }
    }

    if n == count { //6번
        print("\(result)")
        break
    }
}
