
//  main.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/02.
//import Foundation
////10866 덱
//let n = Int(readLine()!)!
//var arr = [Int]()
//for _ in 0..<n{
//    let input = readLine()!.split(separator: " ").map{String($0)}
//    switch input[0]{
//    case "push_front" :
//        arr.append(Int(input[1])!)
//        if !arr.isEmpty{
//            for i in 1..<arr.count{
//                arr[i] = arr[i-1]
//            }
//            arr[0] = Int(input[1])!
//            arr.remove(at: arr.endIndex-1)
//        }
//    case "push_back" :
//        arr.append(Int(input[1])!)
//    case "pop_front" :
//        if arr.isEmpty{
//            print(-1)
//        }else{
//            print(arr.first!)
//            arr.remove(at: 0)
//        }
//    case "pop_back" :
//        if arr.isEmpty{
//            print(-1)
//        }else{
//            print(arr.last!)
//            arr.remove(at: arr.endIndex-1)
//        }
//    case "size" :
//        print(arr.count)
//    case "empty" :
//        if arr.isEmpty{
//            print(1)
//        }else{
//            print(0)
//        }
//    case "front" :
//        if arr.isEmpty{
//            print(-1)
//        }else{
//            print(arr.first!)
//        }
//    case "back" :
//        if arr.isEmpty{
//            print(-1)
//        }else{
//            print(arr.last!)
//        }
//    default :
//        break
//    }
//}


