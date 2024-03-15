//
//  2164.swift
//  BOJ
//
//  Created by leehwajin on 2023/01/05.
//

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

import Foundation
//2164 이렇게 하면 타임오버(removeFirst가 시간을 많이 잡아먹는다고 듣긴 했다.)
var queue = [Int](1...Int(readLine()!)!)
while queue.count != 1 {
    queue.removeFirst()
    let ele = queue.removeFirst()
    queue.append(ele)
}
print(queue.first!)

//새로운방법
var queue = [Int](1...Int(readLine()!)!)
var temp = 0
if queue == [1] {
    print(1)
}else {
    while queue[queue.count-2] != 0 {
        queue[temp] = 0
        queue.append(queue[temp+1])
        queue[temp+1] = 0
        temp += 2
    }
    print(queue.last!)
}
