//
//  17413.swift
//  BOJ
//
//  Created by leehwajin on 2023/08/12.
//

import Foundation
//17413 단어뒤집기2

let input = readLine()!
var status = false
var word = ""
var result = ""

for char in input {
    if char == "<" {
        status = true
        result += word.reversed()
        word = ""
    }else if char == " " && status == false {
        result += word.reversed()
        result += " "
        word = ""
    }
    
    switch status {
    case true:
        result += String(char)
    case false:
        if char != " " {
            word += String(char)
        }
    }
    if char == ">" {
        status = false
    }
}

if word.count != 0 {
    result += word.reversed()
}

print(result)
