//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/29.
//
import Foundation
//1929소수구하기(에라토스테네스의 체로 풀어야 가장 빠름)
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = Array(repeating: true, count: input[1]+1)
arr[1] = false

if (input[1] == 1){

}else{
    for i in 2..<input[1]{
        if arr[i] == false{
            continue
        }
        for j in stride(from: 2*i, through:input[1], by: i){
            arr[j] = false
        }
    }
}

for i in input[0]...input[1]{
    if arr[i] == true{
        print(i)
    }
}

