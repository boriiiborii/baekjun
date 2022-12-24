//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/24.
//

import Foundation

let n = Int(readLine()!)!

//영어배열채워넣기
var arr:Array<Int> = []

for _ in 0...25{
    arr.append(0)
}

var numbers = 0




for times in 1...n{
    //문자 받기
    let input = Array(readLine()!)
    
    //arr초기화
    for i in 0...arr.endIndex-1{
        arr[i] = 0
    }
    
    //영어와 숫자 매칭시키기
    var input1:Array<Int> = []
    for i in 0...(input.endIndex-1){
        input1.append(Int(input[i].asciiValue!))
        if (input1[i] >= 97) {
            input1[i] -= 97
        }else if (input1[i] >= 65){
            input1[i] -= 65
        }
    }
    
    //본격적으로 제발

    for i in 0...input.endIndex-1 {
        arr[input1[i]] += 1
        if arr[input1[i]] != 1{
            if input[i] == input[i-1]{
                if i == input.endIndex-1{
                    numbers += 1
                    break
                }
                continue
            }else{break}
        }
        else if(i == input.endIndex-1) {
            numbers += 1
        }
    }
    if times == n{
        print(numbers)
    }
}

    
 
