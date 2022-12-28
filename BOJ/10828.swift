//
//  10828.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/28.
//
import Foundation

let times = Int(readLine()!)!
var intArr:Array<Int> = []

for _ in 0..<times{
    var input = readLine()!.split(separator: " ").map{$0}
    switch String(input[0]){
    case "push" :
        intArr.append(Int(input[1])!)
    case "top" :
        if(intArr .isEmpty){
            print("-1")
            continue
        }
        print(intArr[intArr.endIndex-1])
    case "pop" :
        if(intArr .isEmpty){
            print("-1")
            continue
        }
        print(intArr[intArr.endIndex-1])
        intArr.remove(at:intArr.endIndex-1)
        
    case "size" :
        print(intArr.count)
    case "empty" :
        intArr.isEmpty ? print("1") : print("0")
    default:
        break
    }
    
    
}

