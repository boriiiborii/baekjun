//
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2022/12/29.
//

import Foundation

var times = Int(readLine()!)!

OUTTER: for _ in 0..<times{
    
    var input = readLine()!
    var inputArr:Array<Character> = []

INNER: for i in input{
        if i == "(" {
            inputArr.append(contentsOf: "(")
        }else{
            if(inputArr.isEmpty){
                print("NO")
                continue OUTTER
            }else{
                inputArr.removeLast()
            }
        }
    }
    inputArr.isEmpty ? print("YES") : print("NO")
}

