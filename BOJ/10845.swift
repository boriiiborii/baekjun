//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/31.

import Foundation
//10845 큐
let times = Int(readLine()!)!
var arr:Array<Int> = []


for _ in 0..<times{
    let input = readLine()!.split(separator: " ").map{$0}
    switch String(input[0]){
    case "push" :
        arr.append(Int(input[1])!)
    case "pop" :
        if arr.isEmpty{
            print(-1)
        }else{
            print(arr[0])
            arr.remove(at: 0)
        }
    case "size" :
        print(arr.count)
    case "empty" :
        if arr.isEmpty{
            print(1)
        }else{
            print(0)
        }
    case "front" :
        if arr.isEmpty{
            print(-1)
        }else{
            print(arr[0])
        }
    case "back" :
        if arr.isEmpty{
            print(-1)
        }else{
            print(arr[arr.endIndex-1])
        }
    default :
        break
        
    }
}


//10845
var arr = [Int]()
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push":
        arr.append(Int(input[1])!)
    case "pop":
        if !arr.isEmpty {
            print(arr.removeFirst())
        }else {
            print(-1)
        }
    case "size":
        print(arr.count)
    case "empty":
        if arr.isEmpty {
            print(1)
        }else {
            print(0)
        }
    case "front":
        if arr.isEmpty {
            print(-1)
        }else {
            print(arr.first!)
        }
    case "back":
        if arr.isEmpty {
            print(-1)
        }else {
            print(arr.last!)
        }
    default:
        break
    }
    
}

