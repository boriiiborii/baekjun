//
//  4949.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/07.
//

import Foundation
//4949 균형잡힌세상
func findIndex(arr:[String], word:String) -> Int{
    if arr.contains(word){
        for i in (0..<arr.endIndex).reversed(){
            if arr[i] == word{
                return i
            }
        }
    }
    return -1
}


while true{
    var input = Array(readLine()!)
    var stack = [String]()
    if input[0] == "." && input.count == 1{
        break
    }
    
    for i in 0..<input.count{
        if stack.contains("noerr"){
            break
        }else{
            switch input[i]{
            case "(" :
                stack.append("(")
            case "[" :
                stack.append("[")
            case ")" :
                if (stack.contains("(")) && (findIndex(arr: stack, word: "(") > findIndex(arr: stack, word: "[")) {
                    stack.remove(at: findIndex(arr: stack, word: "("))
                }else{
                    stack.append("noerr")
                    print("no")
                    break
                }
            case "]" :
                if (stack.contains("[")) && (findIndex(arr: stack, word: "[") > findIndex(arr: stack, word: "(")) {
                    stack.remove(at: findIndex(arr: stack, word: "["))
                }else{
                    stack.append("noerr")
                    print("no")
                    break
                }
            default :
                break
            }
        }
        }
        
    if (stack.isEmpty) && (!stack.contains("noerr")) {
        print("yes")
    }else if !stack.contains("noerr"){
        print("no")
    }
}
