//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/22.
//

import Foundation

let input = Int(readLine()!)!

for _ in 1...input{
    var input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
    var num = input1[0]// 변수몇개
    var sum = 0
    
    
    for i in 1...num{
        sum += input1[i]
    }
    
    
    var avr = Float(sum / num)//평균
    
    var up = 0
    for i in 1...num {
        if(Float(input1[i]) > avr){
            up += 1
        }
    }
    
    var a:Float = 1000
    
    let digit: Float = pow(10, 3) // 10의 3제곱
    
    var ans = String(format: "%.3f", round((Float(up)/Float(num)*100) * digit) / digit) //소숫점 세자리까지 반올림이라 1000
    print(ans+"%")

}


