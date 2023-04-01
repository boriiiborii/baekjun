//
//  4821.swift
//  BOJ
//
//  Created by leehwajin on 2023/04/01.
//

import Foundation

while true{
    
    var range = Int(readLine()!)!
    var arr = Array(repeating: false, count: (range+1))
    if range == 0{
        exit(0)
    }
    let input = readLine()!
    let split = input.split(separator: ",")

                
    for i in 0..<split.count{
        if split[i].contains("-"){
            var real = split[i].split(separator: "-")
            if Int(real[0])!>Int(real[1])! || Int(real[0])! > range{
                continue
            }else{
                for i in Int(real[0])!...min(Int(real[1])!,range){
                    arr[i] = true
                }
            }
        }else{
            if Int(split[i])! <= range{
                arr[Int(split[i])!] = true
            }
        }
        
    }
    
    print(arr.filter{$0 == true}.count)
    
    
    
}
