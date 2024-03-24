//
//  17219.swift
//  BOJ
//
//  Created by leehwajin on 2023/07/28.
//

import Foundation
//17219 비밀번호 찾기
let input = readLine()!.split(separator: " ").map { Int($0)! }
var dic: [String:String] = [:]
let n = input[0], m = input[1]

for _ in 0..<n {
    let siteAndSecretNumber = readLine()!.split(separator: " ").map{String($0)}
    
    let site = siteAndSecretNumber[0]
    let secretNumber = siteAndSecretNumber[1]
    
    dic[site] = secretNumber
}

for _ in 0..<m {
    let site = readLine()!
    print(dic[site]!)
}



import Foundation
//17219
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var dic = [String: String]()
for _ in 0..<nm[0] {
    let input = readLine()!.split(separator: " ").map{String($0)}
    dic[input[0]] = input[1]
}
for _ in 0..<nm[1] {
    let input = readLine()!
    print(dic[input] ?? "")
}
