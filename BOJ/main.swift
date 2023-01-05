
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
//
//import Foundation
////1052 물병
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = input[0]
//let k = input[1]
//var arr = Array(repeating: 1, count: n)
//var plus = 0
//
//func logic(){
//    for i in 0...20{
//        var idx1 = 0
//        var idx2 = 0
//        let p = Int(pow(2, Double(i)))
//        while arr.firstIndex(of: Int(p)) != arr.lastIndex(of: Int(p)){
//            idx1 = arr.firstIndex(of: Int(p))!
//            idx2 = arr.lastIndex(of: Int(p))!
//            arr.remove(at: idx2)
//            arr.remove(at: idx1)
//            arr.append(Int(p)*2)
//        }
//    }
//}
//
//
//logic()
//print(arr)
//while(arr.count > k && plus <= 1000){
//    arr.append(1)
//    plus += 1
//    logic()
//}
//
//if plus > 1000{
//    print(-1)
//}else{
//    print(plus)
//}


import Foundation
//2164 카드2
let num = Int(readLine()!)!
var arr =  Array(1...num)
var temp = 0

if num == 1 {print(1)}
else{
    while true{
        arr[temp] = 0
        arr.append(arr[temp+1])
        arr[temp+1] = 0
        if arr[arr.count-2] == 0 {print(arr.last!); break}
        temp += 2
    }
}

//
//import Foundation
//class Node<T> {
//    var data: T?
//    var next: Node?
//
//    init(data: T?, next: Node? = nil){
//        self.data = data
//        self.next = next
//    }
//}
//
//class LinkedList<T> {
//    private var head: Node<T>?
//}
//
//func append(data: T?) {
//
//    //head가 없는 경우 Node를 생성 후 head로 지정해준다
//    if head == nil {
//        head = Node(data: data)
//        return
//    }
//
//    var node = head
//    while node?.next != nil {
//        node = node?.next
//    }
//    node?.next = Node(data: data)
//}
