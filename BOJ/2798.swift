//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/29.
//
import Foundation
//2798블랙잭

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let max = arr[1]

var num = readLine()!.split(separator: " ").map{Int(String($0))!}
num.sort()

var nb = 0
for i in 0..<num.count-2{
    for j in i+1..<num.count-1{
        for k in j+1..<num.count{
            if ((num[i]+num[j]+num[k]) <= max)&&(num[i]+num[j]+num[k] > nb){
                nb = num[i]+num[j]+num[k]
            }
            
        }
    }
}

print(nb)
