//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/26.
//

import Foundation
//2839 설탕배달

var sugar =  Int(readLine()!)!
var sugar1 = sugar
var sugar2 = 0
var maxfiv = 0
var maxthr = 0
var arr:Array<Int> = []


while(sugar>=5){
    sugar -= 5
    maxfiv += 1
}

for i in 0...maxfiv{
    arr.insert(i, at: i)
}
arr.reverse()

if sugar == 0{
    print(maxfiv)
}
else{
    if maxfiv == 0{
        sugar -= 3
        if sugar == 0{
            print("1")
        }
        else{
            print("-1")
        }
    }
    else{
    Outter: for i in arr{
                sugar2 = sugar1
                sugar2 -= 5*i
        Inner: while(sugar2 >= 3){
                    sugar2 -= 3
                    maxthr += 1
                    if sugar2 == 0 {
                        let a = i+maxthr
                        print(a)
                        break Outter
                    }
                    if (i == 0)&&(sugar2<3){
                        print("-1")
                        break
                    }
                        
                }
                maxthr = 0
            }
        }
}


import Foundation
//2839
let input = Int(readLine()!)!
if input <= 5 {
    if input == 3 || input == 5 {
        print(1)
    }else {
        print(-1)
    }
}else {
    var dp = Array(repeating: -1, count: input+1)
    dp[3] = 1
    dp[5] = 1
    var temp = 0
    for i in 6...input {
        if dp[i-3] == -1{
            if dp[i-5] == -1 {
                dp[i] = -1
            }else {
                dp[i] = dp[i-5]+1
            }
        }else if dp[i-5] == -1{
                dp[i] = dp[i-3]+1
        }else {
            dp[i] = min(dp[i-3], dp[i-5])+1
        }
    }
    print(dp[input])

}
