//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/29.
//
import Foundation
//2292 벌집
let num = Int(readLine()!)!

var range = 2
var plus = 0
var start = 2


if num == 1{
    print("1")
}else{
    for i in 0...999999{
        plus = 5+6*i
        if num <= start+plus{
            print(i+2)
            break
        }else{
            start = start+plus+1
            continue
        }
    }
}

//2292 벌집
var input = Int(readLine()!)!
var count = 1

if input == 1{
    print(1)
    exit(0)
}

input -= 1
var i = 1

while input>0 {
    input -= 6*i
    count += 1
    i += 1
}

print(count)

