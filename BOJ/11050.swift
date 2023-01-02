//
//  11050.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/02.
//

import Foundation
//11050 이항계수1
func factorial(_ num:Int) -> Int{
    if num == 0{
        return 1
    }else{
        return num*factorial(num-1)
    }
}


let input = readLine()!.split(separator: " ").map{Int(String($0))!}
if input[1]<0{
    print(0)
}else if input[1]>input[0]{
    print(0)
}else{
    print(factorial(input[0]) / (factorial(input[1])*factorial((input[0]-input[1]))))
}
