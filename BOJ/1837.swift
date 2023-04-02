//
//  1837.swift
//  BOJ
//
//  Created by leehwajin on 2023/04/02.
//

import Foundation

//1837 암호제작

//얘네가 왜 백준에서 컴파일 에러가 나는줄 모르겠음
//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//for i in 2..<input[1]{
//    if input[0]%i==0{
//        print("BAD \(i)")
//        exit(0)
//    }
//}
//
//print("GOOD")


func mod(_ s:String, _ p:Int) -> Int {
    var ret = 0
    for c in s {
        ret = (ret*10+Int(String(c))!)%p
    }
    return ret
}

func isPrime(_ num: Int) -> Bool {
    if(num<4) {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) { return false }
    }
    return true
}

let list = readLine()!.split(separator: " ")
let str = String(list[0])
let k = Int(list[1])!
var isDone = false
for i in 2..<k {
    if isPrime(i) {
        if mod(str, i) == 0 {
            print("BAD \(i)")
            isDone = true
            break
        }
    }
}
if !isDone {
    print("GOOD")
}
