
//  main.swift
//  BOJ
import Foundation
//11399 ATM
_ = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var sum = 0

input.sort()

for i in 0..<input.count{
    for j in 0...i{
        sum += input[j]
    }
}

print(sum)
